// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/UI/views/post_auth_screens/HomeScreens/Home_screen.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class SpecificNotification extends StatelessWidget {
  SpecificNotification(
      {Key? key, required this.notifyName, required this.notifyContent})
      : super(key: key);
  final String notifyName;
  final String notifyContent;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: height,
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(
                top: height * 0.02, left: width * 0.03, right: width * 0.02),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width * 0.06,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Image.asset(Common.assetImages + "Logo 2 2.png"),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Image.asset(
                      Common.assetImages + "Vector.png",
                      width: width * 0.048,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Text(
                  notifyName,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Container(
                  width: width * 0.9,
                  child: Text(
                    notifyContent,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, false);
                  },
                  child: Container(
                    width: width * 0.75,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Color(0xFF5081DB),
                    ),
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
