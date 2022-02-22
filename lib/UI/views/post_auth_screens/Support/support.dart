// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:eagle_tip/UI/Widgets/customContainer.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/detectPlatform.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Responsive(
        mobile: Mobile(height: height, width: width),
        tablet: DesktopSupport(
          height: height,
          width: width,
        ),
        desktop: DesktopSupport(
          height: height,
          width: width,
        ),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        color: backGround_color,
        child: Padding(
          padding: EdgeInsets.only(
              top: height * 0.1, left: width * 0.07, right: width * 0.07),
          child: Column(
            children: [
              TopRow(width: width),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Support",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.05,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextFieldMobile(
                  controller: TextEditingController(),
                  isactive: true,
                  width: width * 1.1,
                  height: height,
                  labelText: "Employer Code"),
              SizedBox(
                height: height * 0.012,
              ),
              CustomTextFieldMobile(
                  controller: TextEditingController(),
                  isactive: true,
                  width: width * 1.1,
                  height: height,
                  labelText: "Name"),
              SizedBox(
                height: height * 0.012,
              ),
              CustomTextFieldMobile(
                  controller: TextEditingController(),
                  isactive: true,
                  width: width * 1.1,
                  height: height,
                  labelText: "Email"),
              SizedBox(
                height: height * 0.012,
              ),
              CustomTextFieldMobile(
                  controller: TextEditingController(),
                  isactive: true,
                  width: width * 1.1,
                  height: height,
                  labelText: "Subject"),
              SizedBox(
                height: height * 0.012,
              ),
              MessageTextField(
                  width: width, height: height, labelText: "Message"),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                width: Responsive.isDesktop(context)
                    ? width * 0.3
                    : Responsive.isTablet(context)
                        ? width * 0.6
                        : width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  color: Color(0xFF5081DB),
                ),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                        fontSize: width * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldMobile extends StatelessWidget {
  const CustomTextFieldMobile({
    Key? key,
    required this.width,
    required this.height,
    required this.labelText,
    required this.controller,
    required this.isactive,
  }) : super(key: key);

  final double width;
  final double height;
  final String labelText;
  final TextEditingController controller;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context) ? width * 0.4 : width * 0.8,
      padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
      height: height * 0.08,
      decoration: BoxDecoration(
        color: isactive ? Colors.white : Color(0xffEFF0F6).withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextField(
        enabled: isactive,
        controller: controller,
        style: TextStyle(fontFamily: "Poppins"),
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: TextStyle(
              color: Color(0xffAEB0C3),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class DesktopSupport extends StatelessWidget {
  const DesktopSupport({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        color: backGround_color,
        child: CustomContainer(
          topPad: height * 0.08,
          height: height,
          width: width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Responsive.isDesktop(context)
                    ? Text(
                        "Support",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: Responsive.isDesktop(context)
                                ? width * 0.01
                                : width * 0.023,
                            fontFamily: "Poppins"),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Text(
                            "Support",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: Responsive.isDesktop(context)
                                    ? width * 0.01
                                    : width * 0.023,
                                fontFamily: "Poppins"),
                          ),
                          SizedBox(
                            width: width * 0.25,
                          ),
                        ],
                      ),
                SizedBox(
                  height: height * 0.02,
                ),
                SupportTextField(
                    width: width, height: height, labelText: "Employer Code"),
                SizedBox(
                  height: height * 0.012,
                ),
                SupportTextField(
                    width: width, height: height, labelText: "Name"),
                SizedBox(
                  height: height * 0.012,
                ),
                SupportTextField(
                    width: width, height: height, labelText: "Email"),
                SizedBox(
                  height: height * 0.012,
                ),
                SupportTextField(
                    width: width, height: height, labelText: "Subject"),
                SizedBox(
                  height: height * 0.012,
                ),
                MessageTextField(
                    width: width, height: height, labelText: "Message"),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  width: Responsive.isDesktop(context)
                      ? width * 0.3
                      : Responsive.isTablet(context)
                          ? width * 0.6
                          : width * 0.9,
                  height: height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color: Color(0xFF5081DB),
                  ),
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context)
                              ? width * 0.01
                              : width * 0.023,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: width * 0.125,
        ),
        Image.asset(
          Common.assetImages + "call_out.png",
          width: width * 0.048,
        ),
      ],
    );
  }
}

class SupportTextField extends StatefulWidget {
  const SupportTextField({
    Key? key,
    required this.width,
    required this.height,
    required this.labelText,
  }) : super(key: key);

  final double width;
  final double height;
  final String labelText;

  @override
  State<SupportTextField> createState() => _SupportTextFieldState();
}

class _SupportTextFieldState extends State<SupportTextField> {
  @override
  FocusNode myFocusNode = FocusNode();
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? widget.width * 0.3
          : Responsive.isTablet(context)
              ? widget.width * 0.6
              : widget.width * 0.9,
      padding: EdgeInsets.only(
          top: Responsive.isDesktop(context)
              ? widget.height * 0.006
              : Responsive.isTablet(context)
                  ? widget.height * 0.006
                  : 0.0,
          left: Responsive.isDesktop(context)
              ? widget.width * 0.014
              : Responsive.isTablet(context)
                  ? widget.width * 0.021
                  : widget.width * 0.06,
          right: widget.width * 0.06),
      height: widget.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextField(
        focusNode: myFocusNode,
        style: TextStyle(fontFamily: "Poppins"),
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.labelText,
          labelStyle: TextStyle(
              fontSize: Responsive.isDesktop(context)
                  ? widget.width * 0.01
                  : widget.width * 0.023,
              color:
                  myFocusNode.hasFocus ? Color(0xFF5E8BE0) : Color(0xffAEB0C3),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class MessageTextField extends StatefulWidget {
  const MessageTextField({
    Key? key,
    required this.width,
    required this.height,
    required this.labelText,
  }) : super(key: key);

  final double width;
  final double height;
  final String labelText;

  @override
  _MessageTextFieldState createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  FocusNode myFocusNode = FocusNode();
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? widget.width * 0.3
          : Responsive.isTablet(context)
              ? widget.width * 0.6
              : widget.width * 0.9,
      padding: EdgeInsets.only(
          top: Responsive.isDesktop(context)
              ? widget.height * 0.006
              : Responsive.isTablet(context)
                  ? widget.height * 0.006
                  : 0.0,
          left: Responsive.isDesktop(context)
              ? widget.width * 0.014
              : Responsive.isTablet(context)
                  ? widget.width * 0.021
                  : widget.width * 0.06,
          right: widget.width * 0.06),
      height: widget.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextField(
        focusNode: myFocusNode,
        style: TextStyle(fontFamily: "Poppins"),
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.labelText,
          labelStyle: TextStyle(
              fontSize: Responsive.isDesktop(context)
                  ? widget.width * 0.01
                  : widget.width * 0.03,
              color:
                  myFocusNode.hasFocus ? Color(0xFF5E8BE0) : Color(0xffAEB0C3),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
