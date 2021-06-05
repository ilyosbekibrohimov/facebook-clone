import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/calc_provider.dart';
import 'package:provider/provider.dart';

import 'client.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CalculatorProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
