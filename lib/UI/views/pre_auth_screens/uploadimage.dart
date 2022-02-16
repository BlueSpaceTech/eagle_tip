import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatefulWidget {
  UploadImage({Key? key, required this.email, required this.employercode})
      : super(key: key);
  String email;
  String employercode;
  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  final TextEditingController _password = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("assets/Logo 2 2.png")],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                "Hey Ben,",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff92B8FF),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Upload a profile picture and set a password for your account.",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffDEDEDE),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: width * 0.38,
                height: height * 0.18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Camera.png"),
                  ),
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/addblue.png"),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Set password",
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
                  controller: _password,
                  width: width,
                  height: height,
                  labelText: "Password"),
              SizedBox(
                height: height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  AuthFunctions.adddpUrl(widget.employercode);
                  AuthFunctions.signUp(
                      email: widget.email, password: _password.text);

                  Navigator.pushNamed(context, AppRoutes.bottomNav);
                },
                child: CustomSubmitButton(
                  width: width,
                  title: "Done",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
