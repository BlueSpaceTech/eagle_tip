// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Services/authentication.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
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
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.27,
                    ),
                    Image.asset(Common.assetImages + "Logo 2 2.png"),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Image.asset(
                      Common.assetImages + "Group 287.png",
                      width: width * 0.075,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Column(
                  children: [
                    Text(
                      "Acres Marathon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Tampa, FL",
                      style: TextStyle(
                          color: Color(0xFF6E7191),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Common.assetImages + "Ellipse 49.png",
                      width: width * 0.7,
                    ),
                    Positioned(
                      top: height * 0.115,
                      left: width * 0.142,
                      child: SizedBox(
                        width: width * 0.4,
                        child: Text(
                          "Request Fuel",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 34.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                SiteContainer(
                  width: width,
                  height: height,
                  text: "View Site",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SiteContainer extends StatelessWidget {
  const SiteContainer({
    Key? key,
    required this.width,
    required this.text,
    required this.height,
  }) : super(key: key);

  final double width;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.72,
      height: height * 0.062,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Color(0xFF5081DB),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
