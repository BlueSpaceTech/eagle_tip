import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
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
              Image.asset("assets/forgetpass.png"),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Forget Password?",
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
                  "Enter your email address associated with your account and we’ll send an email with instructions to reset your password.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              CustomTextField(
                  controller: _email,
                  width: width,
                  height: height,
                  labelText: "Email"),
              SizedBox(
                height: height * 0.02,
              ),
              CustomSubmitButton(
                width: width,
                title: "Send Instructions",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
