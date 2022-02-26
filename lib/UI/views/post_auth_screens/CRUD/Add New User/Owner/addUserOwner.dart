// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
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
          child: Column(
            children: [
              Navbar(
                width: width,
                height: height,
                text1: "Home",
                text2: "Sites",
                widget3: Navtext(text: "Chat", width: width),
              ),
              SingleChildScrollView(
                child: Container(
                  height: height,
                  color: backGround_color,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.04,
                        right: width * 0.04,
                        top: height * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Responsive.isDesktop(context) ? 20 : 0,
                        ),
                        Visibility(
                          visible: Responsive.isDesktop(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              Text(
                                "Add new Employee",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text("                       "),
                            ],
                          ),
                        ),
                        Visibility(
                            visible: !Responsive.isDesktop(context),
                            child: CustomAppheader(width: width)),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Visibility(
                          visible: !Responsive.isDesktop(context),
                          child: Row(
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
                                Navigator.pushNamed(
                                    context, AppRoutes.invitation);
                              },
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: CustomSubmitButton(
                                    title: "Next", width: width),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
