import 'dart:async';

import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/login_screen.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backGround_color,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(width: width * 2),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Eagle Transport Inventry Program",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.18,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "Loading",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
