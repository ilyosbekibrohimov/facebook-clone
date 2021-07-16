import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:grpc_client/business_logic/providers/auth_provider.dart';
import 'package:grpc_client/utils/settings.dart';
import 'package:grpc_client/utils/strings.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen();

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<AuthProvider>(
      builder: (context, auth, child) {
        if(preferences!.getString("user_id") == null)
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              sign_in,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {
                    auth.signInWithGoogle().then((value) {
                      if (value) Navigator.pop(context);
                    });
                  },
                  text: "Sign in with Google",
                )),
            SignInButton(Buttons.Facebook, onPressed: () {}, text: "Sign in with Facebook"),
            SignInButton(Buttons.GitHub, onPressed: () {}, text: "Sign in with GitHub"),

          ],
        );
        else return
       Center(
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
           children: [
               Text("You signed in as ${auth.fullName()}"),
               MaterialButton(color: Colors.blue, onPressed: () {
                 auth.signOut();
                 Navigator.pop(context);
                 preferences!.clear();
                 }, child: Text("Signout"), textColor: Colors.white,)
              ],
         ),
       );
      },
    ));
  }
}
