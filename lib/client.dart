import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/calc_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CalculatorProvider>(context, listen: false);
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
            provider.calculator();
          },
        ),
      ),
    );
  }
}
