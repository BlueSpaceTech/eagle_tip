// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:flutter/material.dart';

class CustomAppheader extends StatelessWidget {
  CustomAppheader({Key? key, required this.width}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    bool? isTapped = false;
    return Row(
      children: [
        SizedBox(
          width: width * 0.27,
        ),
        Image.asset(Common.assetImages + "Logo 2 2.png"),
        SizedBox(
          width: width * 0.2,
        ),
        MenuButton(isTapped: isTapped, width: width),
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.isTapped,
    required this.width,
  }) : super(key: key);

  final bool? isTapped;
  final double width;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Color(0xFF3f4850),
      child: isTapped!
          ? Image.asset(
              Common.assetImages + "Group 287.png",
              width: width * 0.075,
            )
          : Image.asset(
              Common.assetImages + "Group 288.png",
              width: width * 0.075,
            ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.faq);
            },
            child: Text(
              "faq",
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: "Poppins"),
            ),
          ),
          value: 1,
        ),
        PopupMenuItem(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.support);
            },
            child: Text(
              "support",
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: "Poppins"),
            ),
          ),
          value: 2,
        ),
        PopupMenuItem(
          child: Text(
            "take tour again",
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: "Poppins"),
          ),
          value: 3,
        )
      ],
    );
  }
}
