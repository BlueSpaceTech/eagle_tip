// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class AddNewUserByOwner extends StatelessWidget {
  AddNewUserByOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List Site = [
      "All",
      "Acers Marathon",
      "Bridge Marathon",
      "Clarks Marathon",
      "Huntington Marathon"
    ];
    bool isTapped = false;
    List Roles = ["Site Manager", "Site User"];
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
                      MenuButton(isTapped: isTapped, width: width)
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
                  Wrap(
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < Site.length; i++) ...{
                        SiteChip(
                          siteName: Site[i],
                          height: height,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      },
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
                  Wrap(
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < Roles.length; i++) ...{
                        SiteChip(
                          siteName: Roles[i],
                          height: height,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      },
                    ],
                  ),
                  SizedBox(
                    height: height * 0.32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.invitation);
                        },
                        child: Card(
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
    required this.height,
    required this.siteName,
  }) : super(key: key);

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
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected! ? Color(0xFF5081db) : Color(0xFF535c65),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          widget.siteName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
