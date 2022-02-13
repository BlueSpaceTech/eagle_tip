import 'dart:ffi';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthFunctions {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  static genrateemployercode() {
    final _random = Random();
    const _availableChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    final randomString = List.generate(6,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();

    return randomString;
  }

  sendinvite() {}
  static addUserTodb(String name, String email, int phonenumber,
      String userRole, String dpUrl, bool phoneisverified) {
    FirebaseFirestore.instance
        .collection("users")
        .doc(genrateemployercode())
        .set({
      "name": name,
      "email": email,
      "phonenumber": phonenumber,
      "userRole": userRole,
      "dpUrl": dpUrl,
      "phoneisverified": phoneisverified
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
