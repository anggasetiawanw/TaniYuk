import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanikyukv2/ui/main_page/main_page.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth;

  AuthServices(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn(
      String email, String password, BuildContext context) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
      return "Succes";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUp(
      String email, String password, BuildContext context) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
      return "Succes";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  // static FirebaseAuth _auth = FirebaseAuth.instance;
  // static Future<void> signOut() async {
  //   _auth.signOut();
  // }

  // static Future<UserCredential?> signUp(String email, String password) async {
  //   try {
  //     UserCredential result = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     UserCredential userCredential = result;
  //     return userCredential;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

  // static Future<UserCredential?> signIn(String email, String password) async {
  //   try {
  //     UserCredential result = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     UserCredential userCredential = result;
  //     return userCredential;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
  // static Stream<User?> get user => _auth.authStateChanges();
}
