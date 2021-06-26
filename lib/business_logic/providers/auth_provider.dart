import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
        _fullName = result.user!.displayName!;
        _imgUrl = result.user!.photoURL!;
        print(googleSignIn.currentUser!.displayName);
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
    googleSignIn.signOut().then((value) {
      print(value);
      _fullName = "Not authenticated";
      _imgUrl = "https://www.pngitem.com/pimgs/m/9-93862_my-account-account-vector-icon-png-transparent-png.png";
      notifyListeners();
    });
  }

  String get imgUrl => _imgUrl;

  String get fullName => _fullName;

  Status get loginStatus => _loginStatus;
}

enum Status { GOOGLE, FACEBOOK, SignedOut }
