import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Services/authentication_helper.dart';
import 'package:eagle_tip/Services/storagemethods.dart';
import 'package:eagle_tip/Services/utils.dart';
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:eagle_tip/UI/Widgets/customtoast.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  UploadImage({Key? key, required this.doc}) : super(key: key);
  DocumentSnapshot doc;
  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  FToast? fToast;
  final TextEditingController _password = TextEditingController();
  Uint8List? _image;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void signupUser(double width) async {
    String res = await AuthFunctions().signupuser(
      // token: widget.doc.get("token"),
      email: widget.doc.get("email"),
      password: _password.text,
      username: widget.doc.get("name"),
      phoneno: widget.doc.get("phonenumber"),
      role: widget.doc.get("userRole"),
      Sites: widget.doc.get("sites"),
      employercode: widget.doc.get("employercode"),
      isverified: true,
    );
    //  StorageMethods().uploadStorageImage(_image!, "filePath");

    if (res != "success") {
      fToast!.showToast(
        child: ToastMessage().show(width, context, res),
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 3),
      );
    } else {
      //Uri url = await StorageMethods().uploadImageFile(_image!);
      fToast!.showToast(
        child: ToastMessage().show(width, context, "Your Account is Created"),
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 3),
      );
      Navigator.pushNamed(context, AppRoutes.homeScreen);
    }
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
            child: Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: Responsive.isDesktop(context)
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                        children: [
                          Visibility(
                            visible:
                                Responsive.isDesktop(context) ? false : true,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context)
                                ? width * 0
                                : width * 0.12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Responsive.isDesktop(context)
                                  ? Image.asset("assets/Logo 2 1.png")
                                  : Image.asset("assets/Logo 2 2.png")
                            ],
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
                    /*
                     _image!=null?
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    ):
                     CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    ),
                    */
                    _image != null
                        ? Container(
                            alignment: Alignment.bottomRight,
                            width: Responsive.isDesktop(context)
                                ? width * 0.12
                                : width * 0.4,
                            height: height * 0.24,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: MemoryImage(_image!),
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                                //  onTap: selectImage,
                                child: Image.asset("assets/addblue.png")),
                          )
                        : Container(
                            alignment: Alignment.bottomRight,
                            width: Responsive.isDesktop(context)
                                ? width * 0.12
                                : width * 0.4,
                            height: height * 0.24,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/Camera.png"),
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
//onTap: selectImage,
                                child: Image.asset("assets/addblue.png")),
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
                        isactive: true,
                        controller: _password,
                        width: width,
                        height: height,
                        labelText: "Password"),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () => signupUser(width),
                      child: CustomSubmitButton(
                        width: width,
                        title: "Done",
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
