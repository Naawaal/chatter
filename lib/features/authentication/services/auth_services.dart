import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthServices {
  static final _auth = FirebaseAuth.instance;

  //Login user with email and password
  static Future<String?> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: 'email',
        password: 'password',
      );
      return result.user!.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        Fluttertoast.showToast(
          msg: "No user found for that email.",
        );
      } else if (e.code == "wrong-password") {
        Fluttertoast.showToast(
          msg: "Wrong password provided for that user.",
        );
      } else if (e.code == "invalid-email") {
        Fluttertoast.showToast(
          msg: "Invalid email.",
        );
      } else {
        Fluttertoast.showToast(
          msg: "Error: ${e.message}",
        );
      }
      return null;
    }
  }

  //Register user with email and password
  static Future<String?> registerUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user!.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        Fluttertoast.showToast(
          msg: "The password provided is too weak.",
        );
      } else if (e.code == "email-already-in-use") {
        Fluttertoast.showToast(
          msg: "The account already exists for that email.",
        );
      } else if (e.code == "invalid-email") {
        Fluttertoast.showToast(
          msg: "Invalid email.",
        );
      } else {
        Fluttertoast.showToast(
          msg: "Error: ${e.message}",
        );
      }
      return null;
    }
  }

  //check if user is logged in
  static Stream<User?> checkAuthState() {
    return _auth.authStateChanges();
  }
}
