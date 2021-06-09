import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/providers/posts_provider.dart';
import 'package:grpc_client/business_logic/providers/single_post_provider.dart';
import 'package:grpc_client/models/post_model.dart';
import 'package:provider/provider.dart';

import 'make_post_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _fetched = false;
  List<Post> _posts = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;

    print("build is being called");

    var provider = Provider.of<PostsProvider>(context, listen: false);
    if (!_fetched)
      provider.fetchPosts(10).then((value) {
        setState(() {
          print(value);
          _fetched = value;
        });
      });
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dummy"),
      ),
      body: Container(
          child: _fetched
              ? ListView.builder(
                  itemCount: provider.posts.length,
                  itemBuilder: (BuildContext context, index) {
                    return _buildSinglePostWidget(provider.posts[index], screen_height, screen_width);
                  })
              : Text("Not available")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostBottomSheet()));
        },
      ),
    );
  }

  //childred widgets
  Widget _buildSinglePostWidget(Post? post, double height, double width) {
    double cardHeight = 0.3 * height;
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
            flex: 7,

            child: Image.memory(Uint8List.fromList(post!.pictureBlob), width: double.infinity,  fit: BoxFit.fitWidth
              ,),
          ),
          Expanded(flex:1,child: Container(

            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.0),
            child: Text(post.title, textAlign: TextAlign.center, style: TextStyle(

              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
          )),
          Divider(),
          Expanded(flex:2,child: Container(
              margin: EdgeInsets.only(left: 10.0),

              child: Text(post.content))),
        ],
      )),
    );
  }

  Widget _buildHeaderWidget() {
    return Container();
  }
}
