/*
DocumentReference dbRef = FirebaseFirestore.instance
                        .collection('users')
                        .doc("ABC121");

                    dbRef.get().then((data) {
                      if (data.exists) {
                        setState(() {
                          name.text = data.get("name");
                          email.text = data.get("email");
                          password.text = data.get("password");
                          url.text = data.get("dpurl");
                        });
                      } else {
                        print("not");

                        SnackBar(content: Text("f"));
                      }
                    });
                     FirebaseFirestore.instance
                        .collection("users")
                        .doc("df")
                        .set({"name": "f"}, SetOptions(merge: true));
*/
import 'package:eagle_tip/UI/Widgets/customTextField.dart';
import 'package:eagle_tip/UI/Widgets/customfaqbottom.dart';
import 'package:eagle_tip/UI/Widgets/customsubmitbutton.dart';
import 'package:flutter/material.dart';

class EmployerCode extends StatelessWidget {
  const EmployerCode({Key? key}) : super(key: key);

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
                height: height * 0.15,
              ),
              Text(
                "Enter Employer Code",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextField(width: width, height: height, labelText: "Code"),
              SizedBox(
                height: height * 0.015,
              ),
              CustomSubmitButton(
                width: width,
                title: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
