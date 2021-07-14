
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc_client/business_logic/services/web_service.dart';
import 'package:grpc_client/utils/settings.dart';

class AuthProvider extends ChangeNotifier {
  String _fullName = "Not authenticated";
  String _imgUrl = "https://www.pngitem.com/pimgs/m/9-93862_my-account-account-vector-icon-png-transparent-png.png";
  Status _loginStatus = Status.SignedOut;

  GoogleSignIn googleSignIn = GoogleSignIn();

  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final result = await FirebaseAuth.instance.signInWithCredential(credential);
      if (result.user != null) {
        _loginStatus = Status.GOOGLE;
        WebService.authenticate(googleAuth.idToken).then((a) async {
          if (a != null) {

              await preferences!.setString('user_id', a.toString());
              await preferences!.setString("photo_url", result.user!.photoURL!);
              await preferences!.setString("name", result.user!.displayName!);

          }
        });
        print(googleAuth.idToken);
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> facebookAuth() async {}

  Future<void> phoneAuth() async {}

  void signOut() {
    googleSignIn.disconnect().then((value) => null);
    googleSignIn.signOut().then((value) {
      print(value);
      _loginStatus = Status.SignedOut;

      notifyListeners();
    });
  }

  String imgUrl() {

    return preferences!.getString("photo_url")??"https://www.pngitem.com/pimgs/m/9-93862_my-account-account-vector-icon-png-transparent-png.png";
  }

  String fullName() {

    return preferences!.getString("name")??"unknown";
  }

  Status get loginStatus => _loginStatus;
}

enum Status { GOOGLE, FACEBOOK, SignedOut }
