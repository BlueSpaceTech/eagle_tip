import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.width,
    required this.height,
    required this.labelText,
  }) : super(key: key);

  final double width;
  final double height;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
      height: height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextField(
        style: TextStyle(fontFamily: "Poppins"),
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: TextStyle(
              color: Color(0xff28519D),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
