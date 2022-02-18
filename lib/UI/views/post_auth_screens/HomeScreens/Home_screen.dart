// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
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
  bool? isTapped = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: backGround_color,
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.05),
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
                  PopupMenuButton(
                    color: Color(0xFF3f4850),
                    child: isTapped!
                        ? Image.asset(
                            Common.assetImages + "Group 287.png",
                            width: width * 0.075,
                          )
                        : Image.asset(
                            Common.assetImages + "Group 288.png",
                            width: width * 0.075,
                          ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.faq);
                          },
                          child: Text(
                            "faq",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.support);
                          },
                          child: Text(
                            "support",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.welcometour);
                          },
                          child: Text(
                            "take tour again",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        value: 3,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      AuthFunctions.signOut();
                      Navigator.pushNamed(context, AppRoutes.loginscreen);
                    },
                    child: Text(
                      "Acres Marathon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
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
                height: height * 0.05,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.siteDetails,
                  );
                },
                child: Stack(
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
              ),
              SizedBox(
                height: height * 0.07,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.siteScreen);
                  },
                  child: SiteContainer(
                      width: width, text: "Sites", height: height)),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.crudscreen);
                },
                child: SiteContainer(
                    width: width, text: "Edit Employees", height: height),
              )
            ],
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
