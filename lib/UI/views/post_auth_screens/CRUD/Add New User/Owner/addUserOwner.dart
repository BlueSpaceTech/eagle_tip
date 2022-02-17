// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class AddNewUserByOwner extends StatelessWidget {
  AddNewUserByOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            color: backGround_color,
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.04, right: width * 0.04, top: height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width * 0.06,
                      ),
                      SizedBox(
                        width: width * 0.17,
                      ),
                      Image.asset(Common.assetImages + "Logo 2 2.png"),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      Image.asset(
                        Common.assetImages + "Group 288.png",
                        width: width * 0.08,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add new user",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text(
                    "Site",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SiteChip(
                          siteName: "Acres Marathon",
                          width: width * 0.28,
                          height: height),
                      SizedBox(
                        width: 10.0,
                      ),
                      SiteChip(
                          siteName: "Bridge Marathon",
                          width: width * 0.3,
                          height: height),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SiteChip(
                          siteName: "Clarks Marathon",
                          width: width * 0.3,
                          height: height),
                      SizedBox(
                        width: 10.0,
                      ),
                      SiteChip(
                          siteName: "Huntington Marathon",
                          width: width * 0.37,
                          height: height),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text(
                    "Role",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SiteChip(
                          siteName: "Site Manager",
                          width: width * 0.28,
                          height: height),
                      SizedBox(
                        width: 10.0,
                      ),
                      SiteChip(
                          siteName: "Site User",
                          width: width * 0.2,
                          height: height),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            color: Color(0xFF5081db),
                          ),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SiteChip extends StatefulWidget {
  SiteChip({
    Key? key,
    required this.width,
    required this.height,
    required this.siteName,
  }) : super(key: key);

  final double width;
  final String siteName;
  final double height;

  @override
  State<SiteChip> createState() => _SiteChipState();
}

class _SiteChipState extends State<SiteChip> {
  bool? isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected!;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height * 0.042,
        decoration: BoxDecoration(
          color: isSelected! ? Color(0xFF5081db) : Color(0xFF535c65),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            widget.siteName,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ),
      ),
    );
  }
}
