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
        WebService.authenticate(googleAuth.idToken).then((a) {
          if (a != null) {
            getSharedPreferences().then((value) async {
              await value!.setString('user_id', a.toString());
              await value.setString("photo_url", result.user!.photoURL!);
              await value.setString("name", result.user!.displayName!);
            });
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
    getSharedPreferences().then((value) {
      if (value != null) {
        _imgUrl = value.getString("photo_url")??"https://www.pngitem.com/pimgs/m/9-93862_my-account-account-vector-icon-png-transparent-png.png";
        notifyListeners();

      }
    });
    return _imgUrl;
  }

  String fullName() {
    getSharedPreferences().then((value) {
      if (value != null) {
        _fullName = value.getString("name")??"Not authenticated";
        notifyListeners();

      }
    });
    return _fullName;
  }

  Status get loginStatus => _loginStatus;
}

enum Status { GOOGLE, FACEBOOK, SignedOut }
