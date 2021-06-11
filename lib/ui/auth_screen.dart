import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:grpc_client/utils/strings.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(sign_in, style: TextStyle(
            fontSize: 18,

          ),),
          Container(alignment: Alignment.center, child: SignInButton(Buttons.Google, onPressed: () {},  text: "Sign in with Google",)),
          SignInButton(Buttons.Facebook, onPressed: () {},  text: "Sign in with Facebook"),
          SignInButton(Buttons.GitHub, onPressed: () {},  text: "Sign in with GitHub")
        ],
      ),
    );
  }
}
