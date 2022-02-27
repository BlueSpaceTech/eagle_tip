//import 'dart:ffi';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthFunctions {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static genrateemployercode() {
    final _random = Random();
    const _availableChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    final randomString = List.generate(6,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();

    return randomString;
  }

  Future<String> signupuser({
    required String email,
    required String password,
    required String username,
    required String phoneno,
    required String role,
    required List Sites,
    required String employercode,
    required bool isverified,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          phoneno.toString().isNotEmpty ||
          role.isNotEmpty ||
          Sites.isNotEmpty ||
          employercode.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        _firestore.collection("users").doc(cred.user!.uid).set({
          "name": username,
          "email": email,
          "phonenumber": phoneno,
          "userRole": role,
          "isverified": true,
          "sites": [],
          "employercode": employercode,
        });
        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  sendinvite() {}
  static addUserTodb(String name, String email, String phonenumber,
      String userRole, String dpUrl, bool phoneisverified, List sites) {
    String code = genrateemployercode();
    FirebaseFirestore.instance.collection("users").doc(code).set({
      "name": name,
      "email": email,
      "phonenumber": phonenumber,
      "userRole": userRole,
      "phoneisverified": phoneisverified,
      "sites": sites,
      "employercode": code,
    }, SetOptions(merge: true));
  }

  //SIGN UP METHOD
  static Future signUp({String? email, String? password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  static Future signIn({String? email, String? password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  static Future signOut() async {
    await _auth.signOut();

    print('signout');
  }

  //add imageurl
  static adddpUrl(String employercode) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(employercode)
        .set({'dpUrl': 'value'}, SetOptions(merge: true)).then((value) {
      //Do your stuff.
    });
  }
}
