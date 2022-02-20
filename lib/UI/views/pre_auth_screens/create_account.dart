import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/phone_verification.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/uploadimage.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({
    Key? key,
    required this.name,
    required this.email,
    required this.phoneno,
    required this.employercode,
  }) : super(key: key);
  String name;
  String phoneno;
  String email;
  String employercode;

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneno = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    name.text = widget.name;
    email.text = widget.email;
    phoneno.text = widget.phoneno;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff2B343B),
      bottomNavigationBar: CustomFAQbottom(),
      body: SingleChildScrollView(
        child: Stack(children: [
          SvgPicture.asset(
            webbg,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.1, right: width * 0.1, top: height * 0.08),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(top: 20),
                width: Responsive.isDesktop(context) ? width * 0.6 : width * 1,
                height: height * 0.8,
                decoration: BoxDecoration(
                    color: Colors.black
                        .withOpacity(Responsive.isDesktop(context) ? 0.6 : 0),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Visibility(
                          visible: Responsive.isDesktop(context) ? false : true,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Image.asset("assets/Logo 2 1.png"),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Text(
                      "Get Otp on this mobile number",
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
                        isactive: false,
                        controller: name,
                        width: width,
                        height: height,
                        labelText: "Name"),
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                        isactive: false,
                        controller: email,
                        width: width,
                        height: height,
                        labelText: "Email"),
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                        isactive: false,
                        controller: phoneno,
                        width: width,
                        height: height,
                        labelText: "Phone"),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerificationScreen(
                                email: email.text,
                                employercode: widget.employercode,
                              ),
                            ));
                      },
                      child: CustomSubmitButton(
                        width: width,
                        title: "Send OTP",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
