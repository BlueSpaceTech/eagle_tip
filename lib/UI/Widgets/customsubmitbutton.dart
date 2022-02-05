import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,
    required this.width,
    required this.title,
  }) : super(key: key);

  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      width: width * 0.42,
      decoration: BoxDecoration(
        color: Color(0xff28519D),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
