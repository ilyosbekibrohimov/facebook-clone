import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/post_provider.dart';
import 'package:grpc_client/ui/post_screen.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PostProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dummy"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("POST!"),
          onPressed: () {
            provider.post("dummy", "dummy", [1,2,3]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
       child:  Icon(Icons.add),

        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => PostBottomSheet()));

        },
      ),
    );
  }
}
