import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
              left: width * 0.1, right: width * 0.1, top: height * 0.08),
          child: Column(
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
                height: height * 0.1,
              ),
              Image.asset("assets/Logo 2 1.png"),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "Enter Your Information",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(width: width, height: height, labelText: "Name"),
              SizedBox(height: height * 0.01),
              CustomTextField(width: width, height: height, labelText: "Email"),
              SizedBox(height: height * 0.01),
              CustomTextField(width: width, height: height, labelText: "Phone"),
              SizedBox(height: height * 0.01),
              CustomTextField(
                  width: width, height: height, labelText: "Password"),
              SizedBox(
                height: height * 0.05,
              ),
              CustomSubmitButton(
                width: width,
                title: "Create Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}