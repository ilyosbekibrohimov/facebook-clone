import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grpc_client/business_logic/providers/auth_provider.dart';
import 'package:grpc_client/business_logic/providers/posts_provider.dart';
import 'package:grpc_client/models/post.dart';
import 'package:grpc_client/ui/auth_screen.dart';
import 'package:grpc_client/ui/widgets/detailed%20post%20%20bottomsheet.dart';
import 'package:grpc_client/utils/settings.dart';
import 'package:grpc_client/utils/strings.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'make_post_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PostsProvider postsProvider = PostsProvider();
  int initialPage = 1;
  ScrollController _scrollController = ScrollController();
  bool _isEnd = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    postsProvider = Provider.of<PostsProvider>(context, listen: true);
    if (!postsProvider.requestDone) postsProvider.fetchPostsByPage(initialPage).then((value) {});

  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              _buildSliverAppBar(),
              _buildList(screenHeight, screenWidth),
            ],
          ),
        ),
        floatingActionButton: Consumer<AuthProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                if (value.loginStatus != Status.SignedOut)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PostBottomSheet())).then((value) async {
                    await postsProvider.fetchPostsByPage(1);
                  });
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen()));
              },
            );
          },
        ));
  }

  //widgets
  Widget _buildSinglePostWidget(Post? post, double height, double width) {
    double cardHeight = 0.5 * height;
    String postContent = "";
    if (post!.content.length > 20)
      postContent = post.content.substring(0, 19);
    else
      postContent = post.content;
    final modalHeight = (height - MediaQueryData.fromWindow(window).padding.top);
    return InkWell(
      onTap: () async{
        await showDetailedViewBottomSheet(post.title, post.content, post.postId, post.pictureBlob, modalHeight, );
      },
      child: Container(
        height: cardHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                  child: Image.memory(
                    Uint8List.fromList(post.pictureBlob!),
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text(
                        post.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Container(margin: EdgeInsets.only(left: 10.0), child: Text(postContent)),
                        if (post.content.length > 20)
                          Container(
                            child: MaterialButton(
                              onPressed: () async {
                                await showDetailedViewBottomSheet(post.title, post.content, post.postId, post.pictureBlob, modalHeight);
                              },
                              child: Text("...See more"),
                              textColor: Colors.blue,
                            ),
                          )
                      ],
                    )),
                Divider(),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text("245"),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text("2"),
                          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text("24"),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget _buildHeaderWidget() {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return Column(
        children: [
          Divider(
            color: Colors.black45,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen())).then((value) async {
                      print("hello hi1");
                      await postsProvider.fetchPostsByPage(1);
                    });
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(auth.imgUrl()),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    auth.fullName(),
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
          Divider(
            color: Colors.black45,
          ),
        ],
      );
    });
  }

  Widget _buildList(double screenHeight, double screenWidth) => SliverToBoxAdapter(
        child: ListView.builder(
            itemCount: postsProvider.posts.length + 1,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (BuildContext ctx, index) {
              if (index == 0) {
                return _buildHeaderWidget();
              } else if (index == postsProvider.posts.length + 1) {
                return _buildCustomLoadingWidget();
              } else {
                index = index - 1;
                return _buildSinglePostWidget(postsProvider.posts[index], screenHeight, screenWidth);
              }
            }),
      );

  Widget _buildCustomLoadingWidget() {
    if (!_isEnd)
      return const SpinKitThreeBounce(
        color: Colors.blue,
        size: 50.0,
      );
    else
      return Center(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "No more results:(",
              style: TextStyle(fontSize: 18),
            )),
      );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      floating: true,
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      title: Text(
        appName,
        style: TextStyle(fontSize: 23, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black54,
            )),
      ],
    );
  }

  Future<void> showDetailedViewBottomSheet(String title, String content, int postId, List<int>? pictureBlob, double height) async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
          //the rounded corner is created here
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0)
          ),
        ),
        context: context,
        builder: (context) => DetailedPostBottomSheet(title, content, pictureBlob, height, postId),
        isScrollControlled: true);
  }
}
