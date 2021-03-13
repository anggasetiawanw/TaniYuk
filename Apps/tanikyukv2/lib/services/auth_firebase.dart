import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  // static FirebaseAuth _auth = FirebaseAuth.instance;
  // static Future<void> signOut() async {
  //   _auth.signOut();
  // }
  static Future<void> signOut() async {
    _auth.signOut();
  }

  // static Future<FirebaseUser> signUp(String email, String password) async {
  //   try {
  //     AuthResult result = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     FirebaseUser firebaseUser = result.user;
  //     return firebaseUser;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
  static Future<UserCredential> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      UserCredential userCredential = result;
      return userCredential;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<UserCredential> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      UserCredential userCredential = result;
      return userCredential;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // static Future<FirebaseUser> signIn(String email, String password) async {
  //   try {
  //     AuthResult result = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     FirebaseUser firebaseUser = result.user;
  //     return firebaseUser;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

  static Stream<User> get user => _auth.authStateChanges();
  // static Stream<FirebaseUser> get firebaseUserStream =>
  //     _auth.onAuthStateChanged;
}
