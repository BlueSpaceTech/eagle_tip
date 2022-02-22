// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customHeader2.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class Sites extends StatelessWidget {
  Sites({Key? key}) : super(key: key);

  List siteImg = ["site1", "site2"];
  List siteName = ["Acres Marathon", "Akron Marathon"];
  List sitelocation = ["Tampa,FL", "Leesburg,FL"];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(
                top: height * 0.1, left: width * 0.05, right: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader2(),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  "Sites",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                SiteList(
                    height: height,
                    width: width,
                    siteImg: siteImg,
                    siteName: siteName,
                    sitelocation: sitelocation),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SiteList extends StatelessWidget {
  const SiteList({
    Key? key,
    required this.height,
    required this.width,
    required this.siteImg,
    required this.siteName,
    required this.sitelocation,
  }) : super(key: key);

  final double height;
  final double width;
  final List siteImg;
  final List siteName;
  final List sitelocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.5,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return SiteDet(
              width: width,
              siteImg: siteImg,
              index: index,
              siteName: siteName,
              sitelocation: sitelocation);
        },
        itemCount: siteImg.length,
      ),
    );
  }
}

class SiteDet extends StatelessWidget {
  const SiteDet({
    Key? key,
    required this.index,
    required this.width,
    required this.siteImg,
    required this.siteName,
    required this.sitelocation,
  }) : super(key: key);

  final double width;
  final List siteImg;
  final List siteName;
  final int index;
  final List sitelocation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.siteDetails);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Container(
          width: width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width * 0.52,
                child: Row(
                  children: [
                    Image.asset(
                      Common.assetImages + "${siteImg[index]}.png",
                      width: width * 0.14,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          siteName[index],
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          sitelocation[index],
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xFF6E7191)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                Common.assetImages + "arrow.png",
                width: width * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
