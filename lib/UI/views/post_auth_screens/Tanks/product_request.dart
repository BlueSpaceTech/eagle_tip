// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ProductRequest extends StatefulWidget {
  const ProductRequest(
      {Key? key,
      required this.tankNumber,
      required this.maxVal,
      required this.divisionNum})
      : super(key: key);
  final int tankNumber;
  final int maxVal;
  final int divisionNum;
  @override
  State<ProductRequest> createState() => _ProductRequestState();
}

class _ProductRequestState extends State<ProductRequest> {
  int initialVal = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Responsive.isDesktop(context) ? height * 1.17 : height,
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(
                top: Responsive.isDesktop(context)
                    ? height * 0.04
                    : height * 0.1,
                left: width * 0.04),
            child: Responsive.isDesktop(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Navbar(
                        width: width,
                        height: height,
                        text1: "Home",
                        text2: "Sites",
                        widget3: Navtext(
                          text: "Messages",
                          width: width,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Stack(
                        children: [
                          WebBg(),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
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
                                  Column(
                                    children: [
                                      Text(
                                        "Acres Marathon",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins"),
                                      ),
                                      Text(
                                        "Tampa, FL",
                                        style: TextStyle(
                                            color: Color(0xFF6E7191),
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * 0.09,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.02),
                                child: Column(
                                  children: [
                                    Text(
                                      "Tank " + widget.tankNumber.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Poppins"),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                    ),
                                    SingleCircularSlider(
                                      20,
                                      1,
                                      showHandlerOutter: false,
                                      sliderStrokeWidth: 14.0,
                                      selectionColor: Color(0xFFA1FF75),
                                      onSelectionChange: (a, b, c) {
                                        setState(() {
                                          initialVal = b * (widget.divisionNum);
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.058),
                                        child: Column(
                                          children: [
                                            Text(
                                              "${((initialVal / widget.maxVal) * 100).toInt()}%",
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  fontFamily: "Poppins"),
                                            ),
                                            Text(
                                                "${initialVal}/${widget.maxVal}",
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFFA0A3BD),
                                                    fontFamily: "Poppins")),
                                            Text(
                                              "Gal",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color(0xFFA0A3BD),
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Poppins"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.05,
                                    ),
                                    Container(
                                      width: width * 0.1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (initialVal > 0) {
                                                  initialVal = initialVal -
                                                      widget.divisionNum;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              Common.assetImages + "Minus.png",
                                              width: width * 0.02,
                                            ),
                                          ),
                                          Text(
                                            initialVal.toInt().toString(),
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins"),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (initialVal <
                                                    widget.maxVal) {
                                                  initialVal = initialVal +
                                                      widget.divisionNum;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              Common.assetImages + "Add.png",
                                              width: width * 0.02,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context,
                                            {"val": initialVal, "bool": true});
                                      },
                                      child: Container(
                                        height: height * 0.06,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            color: Color(0xFF5081db)),
                                        child: Center(
                                          child: Text(
                                            "Request",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: width * 0.06, top: height * 0.15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MenuButton(
                                        isTapped: true, width: width * 0.36)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          InkWell(
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
                          Logo(width: width),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          MenuButton(isTapped: true, width: width)
                        ],
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Column(
                        children: [
                          Text(
                            "Acres Marathon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Tampa, FL",
                            style: TextStyle(
                                color: Color(0xFF6E7191),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Text(
                        "Tank " + widget.tankNumber.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      SingleCircularSlider(
                        20,
                        1,
                        showHandlerOutter: false,
                        sliderStrokeWidth: 14.0,
                        selectionColor: Color(0xFFA1FF75),
                        onSelectionChange: (a, b, c) {
                          setState(() {
                            initialVal = b * (widget.divisionNum);
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 0.058),
                          child: Column(
                            children: [
                              Text(
                                "${((initialVal / widget.maxVal) * 100).toInt()}%",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: "Poppins"),
                              ),
                              Text("${initialVal}/${widget.maxVal}",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFA0A3BD),
                                      fontFamily: "Poppins")),
                              Text(
                                "Gal",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xFFA0A3BD),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Poppins"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        width: width * 0.42,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (initialVal > 0) {
                                    initialVal =
                                        initialVal - widget.divisionNum;
                                  }
                                });
                              },
                              child: Image.asset(
                                Common.assetImages + "Minus.png",
                                width: width * 0.075,
                              ),
                            ),
                            Text(
                              initialVal.toInt().toString(),
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (initialVal < widget.maxVal) {
                                    initialVal =
                                        initialVal + widget.divisionNum;
                                  }
                                });
                              },
                              child: Image.asset(
                                Common.assetImages + "Add.png",
                                width: width * 0.075,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                              context, {"val": initialVal, "bool": true});
                        },
                        child: Container(
                          height: height * 0.075,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Color(0xFF5081db)),
                          child: Center(
                            child: Text(
                              "Request",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
