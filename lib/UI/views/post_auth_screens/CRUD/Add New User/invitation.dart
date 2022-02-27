// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistoryDetail.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class Invitation extends StatefulWidget {
  Invitation({Key? key, required this.sites, required this.role})
      : super(key: key);
  List sites;
  String role;
  @override
  State<Invitation> createState() => _InvitationState();
}

class _InvitationState extends State<Invitation> {
  bool? isTapped = false;
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
              Container(
                height: height,
                color: backGround_color,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.04,
                      right: width * 0.04,
                      top: height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        child: Row(
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
                            Logo(width: width),
                            SizedBox(
                              width: width * 0.17,
                            ),
                            MenuButton(isTapped: isTapped, width: width)
                          ],
                        ),
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.8,
                            child: RichText(
                              text: TextSpan(
                                text: "New user will join",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                ),
                                children: [
                                  TextSpan(
                                    text: " Acres Marathon and Bridge Marathon",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  TextSpan(
                                    text: " as",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Site Manger.",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " Fill the following information related to user. The new user will recieve a link to sign up and download the app.",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      CustomTextField(
                        isactive: true,
                        width: width,
                        height: height,
                        labelText: "Name",
                        controller: _name,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextField(
                        isactive: true,
                        width: width,
                        height: height,
                        labelText: "Email",
                        controller: _email,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextField(
                        isactive: true,
                        width: width,
                        height: height,
                        labelText: "Phone Number",
                        controller: _phone,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          AuthFunctions.addUserTodb(
                              _name.text,
                              _email.text,
                              _phone.text,
                              widget.role,
                              "",
                              false,
                              widget.sites);
                        },
                        child: CustomSubmitButton(
                          width: width,
                          title: "Send Invitation",
                        ),
                      )
                    ],
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
