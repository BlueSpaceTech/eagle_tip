import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black12,
      bottomNavigationBar: CustomFAQbottom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.1, right: width * 0.1, top: height * 0.15),
          child: Column(
            children: [
              Image.asset("assets/Logo 2 1.png"),
              SizedBox(
                height: height * 0.06,
              ),
              Text(
                "Enter Credentials",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(
                width: width,
                height: height,
                labelText: "Email",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                width: width,
                height: height,
                labelText: "Password",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                width: width,
                height: height,
                labelText: "Employer Code",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              CustomSubmitButton(width: width,title: "Login",),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Are you new?",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
