// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/UI/Widgets/customHeader2.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({Key? key}) : super(key: key);

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
                  top: height * 0.01, left: width * 0.04, right: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeader2(),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Ticketdet(),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Can't open app",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ahmad: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                      Container(
                        width: width * 0.9,
                        child: Text(
                          "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Support: ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                      Container(
                        width: width * 0.9,
                        child: Text(
                          "Diam aenean ullamcorper viverra sed tincidunt. Volutpat amet et scelerisque lacus, vitae rhoncus iaculis. In egestas a cras orci cras. Neque at magna nunc turpis. Leo mattis porttitor sed nisl.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomButton(
                    width: width,
                    height: height,
                    buttonText: "Reply",
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.width,
    required this.buttonText,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            buttonText,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins"),
          ),
        ),
      ),
    );
  }
}

class Ticketdet extends StatelessWidget {
  const Ticketdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "User:",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: "  Ahmad Elizando",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFFD9DBE9),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            RichText(
              text: TextSpan(
                text: "Site:",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: "  Acres Marathon",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFFD9DBE9),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Date:",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: "  5/27/15",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFFD9DBE9),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            RichText(
              text: TextSpan(
                text: "Status:",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: "  Open",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFFD9DBE9),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
