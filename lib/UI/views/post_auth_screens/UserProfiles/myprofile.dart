// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          color: backGround_color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Logo(width: width),
              UserDetails(
                height: height,
                width: width,
                boxTitle: "edit profile",
              ),
              ContactInfo(height: height, width: width),
              Divider(
                color: Color(0xFF2E3840),
                thickness: 3.0,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.04),
                child: SitesData(height: height, width: width),
              ),
              Divider(
                color: Color(0xFF2E3840),
                thickness: 3.0,
              ),
              MiscContainer(height: height, width: width),
            ],
          ),
        ),
      ),
    );
  }
}

class MiscContainer extends StatelessWidget {
  const MiscContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MiscBox(
            width: width,
            MiscName: "Tickets History",
          ),
          MiscBox(width: width, MiscName: "Settings")
        ],
      ),
    );
  }
}

class MiscBox extends StatelessWidget {
  const MiscBox({
    Key? key,
    required this.width,
    required this.MiscName,
  }) : super(key: key);

  final double width;
  final String MiscName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.86,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MiscName,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.0,
          )
        ],
      ),
    );
  }
}

class SitesData extends StatelessWidget {
  const SitesData({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.12,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sites",
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          SiteRow(
            width: width,
            siteData: "Acres Marathon. Tampa,Fl.",
            imgpath: "Group 268",
          ),
          SiteRow(
            width: width,
            siteData: "Bridge Marathon. NP Richey,Fl",
            imgpath: "Group 68",
          ),
        ],
      ),
    );
  }
}

class SiteRow extends StatelessWidget {
  const SiteRow({
    Key? key,
    required this.width,
    required this.imgpath,
    required this.siteData,
  }) : super(key: key);

  final double width;
  final String imgpath;
  final String siteData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Common.assetImages + "$imgpath.png",
          width: width * 0.06,
        ),
        SizedBox(
          width: 14.0,
        ),
        Text(
          siteData,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetailsRow(
            height: height,
            width: width,
            detail: "(209) 555-0104",
            imgpath: 'call',
          ),
          DetailsRow(
            height: height,
            width: width,
            detail: "ahmad@site.com",
            imgpath: 'mail',
          ),
        ],
      ),
    );
  }
}

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    Key? key,
    required this.detail,
    required this.height,
    required this.imgpath,
    required this.width,
  }) : super(key: key);

  final double width;
  final String imgpath;
  final String detail;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          Common.assetImages + "$imgpath.png",
          width: width * 0.04,
        ),
        Text(
          detail,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins"),
        ),
      ]),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Common.assetImages + "Logo 2 1.png",
      width: width * 0.4,
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
    required this.boxTitle,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final String boxTitle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.23,
      width: width,
      child: Column(
        children: [
          Image.asset(
            Common.assetImages + "Ellipse 45.png",
            width: width * 0.18,
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Ahmad Elizondo",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "Manager",
            style: TextStyle(
                fontSize: 14.0,
                color: Color(0xFFD9DBE9),
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: width * 0.28,
            height: height * 0.035,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFF5081DB),
            ),
            child: Center(
                child: Text(
              boxTitle,
              style: TextStyle(
                fontSize: 13.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
