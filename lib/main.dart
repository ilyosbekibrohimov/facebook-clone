import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grpc_client/business_logic/providers/auth_provider.dart';
import 'package:grpc_client/business_logic/providers/posts_provider.dart';
import 'package:provider/provider.dart';

import 'business_logic/providers/single_post_provider.dart';
import 'ui/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => PostProvider()), ChangeNotifierProvider(create: (_) => PostsProvider()), ChangeNotifierProvider(create: (_) => AuthProvider())],
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
