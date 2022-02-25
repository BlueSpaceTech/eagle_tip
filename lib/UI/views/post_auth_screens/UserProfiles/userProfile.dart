// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:ffi';

import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Responsive.isDesktop(context) ? height * 1.15 : height,
            color: backGround_color,
            child: Responsive.isDesktop(context)
                ? Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.03,
                        left: width * 0.04,
                        right: width * 0.04),
                    child: Column(
                      children: [
                        Navbar(
                          width: width,
                          height: height,
                          text1: "Home",
                          text2: "Sites",
                          widget3: Navtext(text: "Chat", width: width),
                        ),
                        Stack(
                          children: [
                            WebBg(),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.07, left: width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Common.assetImages + "Ellipse 45.png",
                                        width: width * 0.045,
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ahmad Elizondo",
                                            style: TextStyle(
                                                fontSize: width * 0.011,
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
                                                fontSize: width * 0.01,
                                                color: Color(0xFFD9DBE9),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.1,
                                      ),
                                      Container(
                                        width: width * 0.06,
                                        height: height * 0.05,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Color(0xFF5081DB),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Chat",
                                          style: TextStyle(
                                            fontSize: width * 0.008,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Container(
                                    height: height * 0.14,
                                    width: width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Contact Details",
                                          style: TextStyle(
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          width: width * 0.1,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  Common.assetImages +
                                                      "call.png",
                                                  width: width * 0.013,
                                                ),
                                                Text(
                                                  "(209) 555-0104",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins"),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          width: width * 0.113,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  Common.assetImages +
                                                      "mail.png",
                                                  width: width * 0.013,
                                                ),
                                                Text(
                                                  "ahmad@site.com",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins"),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.025,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Text(
                                    "Sites",
                                    style: TextStyle(
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      DesktopSiteData(
                                          siteloc: "Tampa, Fl",
                                          sitename: "Acres Marathon",
                                          imgPath: "site11",
                                          width: width,
                                          height: height),
                                      SizedBox(
                                        width: width * 0.036,
                                      ),
                                      DesktopSiteData(
                                          siteloc: "Tampa, Fl",
                                          sitename: "Bridge Marathon",
                                          imgPath: "site21",
                                          width: width,
                                          height: height),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.06,
                                  ),
                                  Container(
                                    width: width * 0.88,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        MenuButton(
                                            isTapped: true, width: width * 0.4)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.02),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.pop(context);
                              }),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
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
                        height: height * 0.26,
                        width: width,
                        child: Column(
                          children: [
                            Image.asset(
                              Common.assetImages + "Ellipse 45.png",
                              width: width * 0.18,
                            ),
                            SizedBox(
                              height: height * 0.005,
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
                              height: height * 0.001,
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
                              height: height * 0.004,
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
                        padding: EdgeInsets.only(
                            left: width * 0.08, right: width * 0.04),
                        child: SitesData(height: height * 1.03, width: width),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class DesktopSiteData extends StatelessWidget {
  const DesktopSiteData({
    Key? key,
    required this.width,
    required this.sitename,
    required this.imgPath,
    required this.siteloc,
    required this.height,
  }) : super(key: key);

  final double width;
  final String imgPath;
  final double height;
  final String sitename;
  final String siteloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          Common.assetImages + "$imgPath.png",
          width: width * 0.08,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          sitename,
          style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.01,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
        Text(
          siteloc,
          style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.007,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
      ],
    );
  }
}
