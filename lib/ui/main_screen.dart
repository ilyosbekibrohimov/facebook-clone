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


    var provider = Provider.of<PostsProvider>(context, listen:  false);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dummy"),
      ),
      body: Container(
         child: Consumer<PostsProvider>(builder : (context, controller, child) {
           bool isListAvailable = false;;
           controller.fetchPosts(10).then((value) {
             setState(() {
               print(value);
               isListAvailable = value;
             });
           });
           if(isListAvailable)
            return  ListView.builder(itemCount: controller.posts.length ,  itemBuilder: (BuildContext context, index) {
              return _buildSinglePostWidget(controller.posts[index],  screen_height, screen_width);
            });

           else return Center(child: MaterialButton(
             child: Text("smth"), onPressed: () {
             provider.testRequest(10);
           },
           ));
         })



      ),

      floatingActionButton: FloatingActionButton(
       child:  Icon(Icons.add),
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => PostBottomSheet()));
         },
      ),
    );
  }



  //childred widgets
  Widget _buildSinglePostWidget(Post? post,  double height, double width){
    return Container(
      height: 0.3*height,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10,left: 10, right: 10),
      child: Card(
        child: post!.title != null?Text(post.title!):Text("Not available") ,
      ),
    );
  }

  Widget _buildHeaderWidget(){
    return  Container();
  }
}
