import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/otp_provider.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/UI/Widgets/customtoast.dart';
import 'package:eagle_tip/UI/views/pre_auth_screens/uploadimage.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationScreen extends StatefulWidget {
  VerificationScreen({Key? key, required this.doc, required this.verid})
      : super(key: key);
  DocumentSnapshot doc;
  ConfirmationResult verid;
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final OtpFieldController _otp = new OtpFieldController();
  FToast? fToast;
  Future<void> signIn(String otp, double width) async {
    String res = "success";
    try {
      await FirebaseAuth.instance
          .signInWithCredential(PhoneAuthProvider.credential(
        verificationId: "",
        smsCode: otp,
      ));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UploadImage(
              doc: widget.doc,
            ),
          ));
      fToast!.showToast(
          child: ToastMessage().show(width, context, "success"),
          gravity: ToastGravity.BOTTOM,
          toastDuration: Duration(seconds: 3));
    } catch (err) {
      res = err.toString();
      fToast!.showToast(
          child: ToastMessage().show(width, context, "error"),
          gravity: ToastGravity.BOTTOM,
          toastDuration: Duration(seconds: 3));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fToast = FToast();
    fToast!.init(context);
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
          WebBg(),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: Responsive.isDesktop(context) ? false : true,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Image.asset("assets/Logo 2 1.png"),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Text(
                      "Verification",
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
                      alignment: Alignment.center,
                      child: Text(
                        "Enter the OTP code sent to your phone",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OTPTextField(
                          controller: _otp,
                          keyboardType: TextInputType.number,
                          length: 6,
                          width: Responsive.isDesktop(context)
                              ? width * 0.3
                              : width * 0.6,
                          fieldWidth: 50,
                          style: TextStyle(fontSize: 17),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.box,
                          otpFieldStyle:
                              OtpFieldStyle(backgroundColor: Colors.white),
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                            //OtpFucnctions().authenticateMe(confirmationResult, _otp)
                            OtpFucnctions().authenticateMe(
                                widget.verid, pin, context, widget.doc);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    InkWell(
                      onTap: () {
                        // signIn(_otp.toString(), width);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UploadImage(
                                doc: widget.doc,
                              ),
                            ));
                      },
                      child: CustomSubmitButton(
                        width: width,
                        title: "Continue",
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Didn???t receive any code?",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Send new code",
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
          ),
        ]),
      ),
    );
  }
}
