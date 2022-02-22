// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistoryDetail.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class Invitation extends StatelessWidget {
  Invitation({Key? key}) : super(key: key);
  bool? isTapped = false;
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextField(
                    isactive: true,
                    width: width,
                    height: height,
                    labelText: "Email",
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextField(
                    isactive: true,
                    width: width,
                    height: height,
                    labelText: "Phone Number",
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomSubmitButton(
                    width: width,
                    title: "Send Invitation",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
