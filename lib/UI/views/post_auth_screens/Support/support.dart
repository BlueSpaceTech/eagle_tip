// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: backGround_color,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: width * 0.07, right: width * 0.07),
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
                        fontSize: 18.0,
                        fontFamily: "Poppins"),
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
                    width: width * 0.9,
                    height: height * 0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: Color(0xFF5081DB),
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 18.0,
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
      padding: EdgeInsets.only(
          left: widget.width * 0.06, right: widget.width * 0.06),
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
              fontSize: 15.0,
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
      padding: EdgeInsets.only(
          left: widget.width * 0.06, right: widget.width * 0.06),
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
              fontSize: 15.0,
              color:
                  myFocusNode.hasFocus ? Color(0xFF5E8BE0) : Color(0xffAEB0C3),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
