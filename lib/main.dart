import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/post_provider.dart';
import 'package:provider/provider.dart';

import 'ui/main_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => PostProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
