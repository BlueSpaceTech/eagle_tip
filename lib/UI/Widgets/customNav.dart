import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.width,
    required this.height,
    required this.text1,
    required this.text2,
    required this.widget3,
  }) : super(key: key);

  final double width;
  final double height;
  final String text1;
  final String text2;
  final Widget widget3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2B343B),
      width: width,
      height: height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Responsive.isDesktop(context) ? width * 0.42 : width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(width: width * 0.6),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.024),
                  child: Container(
                    width: Responsive.isDesktop(context)
                        ? width * 0.15
                        : width * 0.27,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Navtext(
                          width: width,
                          text: text1,
                        ),
                        Navtext(
                          text: text2,
                          width: width,
                        ),
                        widget3,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.07),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Common.assetImages + "search.png"),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Image.asset(Common.assetImages + "image1.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Navtext extends StatelessWidget {
  const Navtext({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0xFFA0A3BD),
          fontSize: Responsive.isDesktop(context) ? width * 0.01 : width * 0.02,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
    );
  }
}