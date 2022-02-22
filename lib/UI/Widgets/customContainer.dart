import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
    required this.width,
    required this.topPad,
    required this.height,
  }) : super(key: key);
  final double width;
  final Widget child;
  final double height;
  final double topPad;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGround_color,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SvgPicture.asset(
            webbg,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: EdgeInsets.only(
                left:
                    Responsive.isDesktop(context) ? width * 0.08 : width * 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isDesktop(context)
                    ? Padding(
                        padding: EdgeInsets.only(top: topPad),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: width * 0.02,
                            ),
                            SizedBox(
                              width: width * 0.014,
                            ),
                            Text(
                              "Back",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  width: Responsive.isDesktop(context) ? width * 0.02 : 0.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.only(top: 20),
                      width: Responsive.isDesktop(context)
                          ? width * 0.45
                          : width * 0.9,
                      height: height * 0.85,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(
                              Responsive.isDesktop(context) ? 0.6 : 0),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: child),
                ),
                SizedBox(
                  width: Responsive.isDesktop(context)
                      ? width * 0.14
                      : width * 0.0,
                ),
                Responsive.isDesktop(context)
                    ? Padding(
                        padding: EdgeInsets.only(top: height * 0.8),
                        child: Image.asset(
                          Common.assetImages + "Group 287.png",
                          width: Responsive.isDesktop(context)
                              ? width * 0.024
                              : width * 0.07,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
