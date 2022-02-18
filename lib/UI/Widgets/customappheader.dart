import 'package:eagle_tip/Utils/common.dart';
import 'package:flutter/material.dart';

class CustomAppheader extends StatelessWidget {
  CustomAppheader({Key? key, required this.width}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width * 0.02,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: width * 0.06,
          ),
        ),
        SizedBox(
          width: width * 0.17,
        ),
        Image.asset(Common.assetImages + "Logo 2 2.png"),
        SizedBox(
          width: width * 0.2,
        ),
        Image.asset(
          Common.assetImages + "Group 288.png",
          width: width * 0.08,
        ),
      ],
    );
  }
}
