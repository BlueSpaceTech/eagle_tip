// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          color: backGround_color,
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Logo(width: width),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Container(
                height: height * 0.23,
                width: width,
                child: Column(
                  children: [
                    Image.asset(
                      Common.assetImages + "Ellipse 45.png",
                      width: width * 0.18,
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Ahmad Elizondo",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Manager",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFD9DBE9),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: width * 0.2,
                      height: height * 0.035,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFF5081DB),
                      ),
                      child: Center(
                          child: Text(
                        "Chat",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              ContactInfo(height: height, width: width),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(
                color: Color(0xFF2E3840),
                thickness: 3.0,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.04),
                child: SitesData(height: height, width: width),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
