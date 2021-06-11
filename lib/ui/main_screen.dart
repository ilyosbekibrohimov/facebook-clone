import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/providers/posts_provider.dart';
import 'package:grpc_client/models/post.dart';
import 'package:grpc_client/ui/auth_screen.dart';
import 'package:grpc_client/utils/strings.dart';
import 'package:provider/provider.dart';

import 'make_post_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PostsProvider provider = PostsProvider();
  List<Post?> posts = [];
  int initialPage = 1;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      provider = Provider.of<PostsProvider>(context, listen: false);
    });

    provider.fetchPostsByPage(initialPage).then((value) {
      setState(() {
        print(value);

        print(value);
        posts.addAll(value!);
      });
    });

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        initialPage = initialPage + 1;
        provider.fetchPostsByPage(initialPage).then((value) {
          setState(() {
            print(value);
            posts.addAll(value!);
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(

        controller: _scrollController,
          itemCount: posts.length+1,
          itemBuilder: (BuildContext ctx, index) {
            if (index == 0)
              return _buildHeaderWidget();
            else  if(index == posts.length )
              return CupertinoActivityIndicator();
            else
              return _buildSinglePostWidget(posts[index], screenHeight, screenWidth);
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostBottomSheet()));
        },
      ),
    );
  }

  Widget _buildSinglePostWidget(Post? post, double height, double width) {
    double cardHeight = 0.4 * height;
    return Container(
      height: cardHeight,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                  Uint8List.fromList(post!.pictureBlob),
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
              Expanded(flex: 1, child: Container(margin: EdgeInsets.only(left: 10.0), child: Text(post.content))),
              Divider(),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _buildHeaderWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                appName,
                style: TextStyle(fontSize: 23, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        Divider(
          color: Colors.black45,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                icon: Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.blue,
                )),
            Container(
                child: Text(
              account_name,
              style: TextStyle(fontSize: 18),
            ))
          ],
        ),
        Divider(
          color: Colors.black45,
        ),
      ],
    );
  }
}
