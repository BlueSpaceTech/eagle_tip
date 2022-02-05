import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({Key? key}) : super(key: key);

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
                "Add Selfie",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                alignment: Alignment.center,
                width: width * 0.7,
                height: height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/Camera.png"),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                alignment: Alignment.center,
                height: height * 0.08,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text(
                  "Upload Profile Picture",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.12,
              ),
              CustomSubmitButton(
                width: width,
                title: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
