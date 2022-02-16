// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class ParticularRequest extends StatelessWidget {
  const ParticularRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(
                left: width * 0.05, right: width * 0.05, top: height * 0.01),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: width * 0.06,
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Image.asset(Common.assetImages + "Logo 2 2.png"),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Image.asset(
                      Common.assetImages + "Vector.png",
                      width: width * 0.048,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Request:",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: Colors.white),
                            children: [
                              TextSpan(
                                text: "  #3456345",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xFFD9DBE9),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Date:",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: Colors.white),
                            children: [
                              TextSpan(
                                text: "  5/27/15",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xFFD9DBE9),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Site:",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: "  Acres Marathon",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFD9DBE9),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Request made by:",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: "  Ahmed Elizando",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFD9DBE9),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    TankDet(
                      tankDet: "Tank 1: Regular",
                      productID: "132",
                      requestedAmount: "4,500 Gal",
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    TankDet(
                      tankDet: "Tank 2: Midgrade",
                      productID: "132",
                      requestedAmount: "5,500 Gal",
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    TankDet(
                      tankDet: "Tank 3: Premium",
                      productID: "132",
                      requestedAmount: "8,000 Gal",
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    TankDet(
                      tankDet: "Tank 4: ULSD",
                      productID: "132",
                      requestedAmount: "8,000 Gal",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TankDet extends StatelessWidget {
  const TankDet({
    Key? key,
    required this.productID,
    required this.requestedAmount,
    required this.tankDet,
  }) : super(key: key);
  final String tankDet;
  final String requestedAmount;
  final String productID;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tankDet,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              productID,
              style: TextStyle(
                fontSize: 13.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Color(0xFF6E7191),
              ),
            ),
            Text(
              requestedAmount,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
