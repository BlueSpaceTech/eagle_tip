import 'package:eagle_tip/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Models/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController name = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  final TextEditingController url = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: name,
              ),
              TextField(
                controller: email,
              ),
              TextField(
                controller: password,
              ),
              TextField(
                controller: url,
              ),
              TextButton(
                  onPressed: () {
                    /*
                    AuthService.handleSignUp(
                        name: name.text,
                        email: email.text,
                        userRole: UserRole.SA,
                        phonenumber: 12,
                        context: context,
                        employercode: "abc33");
                        */
                  },
                  child: Text("Clikc")),
              SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {}, child: Text("set"))
            ],
          ),
        ),
      ),
    );
  }
}
