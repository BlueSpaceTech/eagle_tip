// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class EditUser extends StatelessWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: backGround_color,
            height: height,
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.07, right: width * 0.08, top: height * 0.015),
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
                        ),
                      ),
                      SizedBox(
                        width: width * 0.17,
                      ),
                      Logo(width: width),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Text(
                    "Change profile picture",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: width * 0.38,
                    height: height * 0.18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Image.png"),
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/editImg.png",
                      width: width * 0.12,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text(
                    "Change password",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ChangePassField(labelText: "Current Password"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ChangePassField(labelText: "New Password"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ChangePassField(labelText: "Re-enter New Password"),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, false);
                    },
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color(0xFF5081DB),
                      ),
                      child: Center(
                        child: Text(
                          "Done",
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
        ),
      ),
    );
  }
}

class ChangePassField extends StatelessWidget {
  const ChangePassField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
      height: height * 0.08,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: width * 0.67,
            child: TextField(
              style: TextStyle(fontFamily: "Poppins"),
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                labelStyle: TextStyle(
                    color: Color(0xff28519D),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Image.asset(
            Common.assetImages + "view.png",
            width: width * 0.05,
          ),
        ],
      ),
    );
  }
}
