import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff2B343B),
      bottomNavigationBar: CustomFAQbottom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.1, right: width * 0.1, top: height * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Image.asset("assets/Logo 2 1.png"),
              SizedBox(
                height: height * 0.08,
              ),
              Image.asset("assets/mailsent.png"),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Check your mail",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                width: width * 0.75,
                alignment: Alignment.topLeft,
                child: Text(
                  "An email has been sent. Please click the link when you get it.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
