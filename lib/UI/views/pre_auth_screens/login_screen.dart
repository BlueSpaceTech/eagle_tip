import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _employercode = TextEditingController();
  final TextEditingController _email = TextEditingController();
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
              left: width * 0.1, right: width * 0.1, top: height * 0.15),
          child: Column(
            children: [
              Image.asset("assets/Logo 2 1.png"),
              SizedBox(
                height: height * 0.06,
              ),
              Text(
                "Enter your Credentials",
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
                controller: _email,
                width: width,
                height: height,
                labelText: "Email",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: _password,
                width: width,
                height: height,
                labelText: "Password",
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                controller: _employercode,
                width: width,
                height: height,
                labelText: "Employer Code",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              SizedBox(
                height: height * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  AuthFunctions.signIn(
                      email: _email.text, password: _password.text);
                  Navigator.pushNamed(context, AppRoutes.welcometour);
                },
                child: CustomSubmitButton(
                  width: width,
                  title: "Login",
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                height: height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.employercode);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are you new?",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Create Account",
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
            ],
          ),
        ),
      ),
    );
  }
}
