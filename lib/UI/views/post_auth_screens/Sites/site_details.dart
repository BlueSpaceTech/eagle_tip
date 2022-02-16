// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/UI/views/post_auth_screens/Request%20History/request_history.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Tanks/tanks_request.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class SiteDetails extends StatefulWidget {
  SiteDetails({Key? key}) : super(key: key);

  @override
  State<SiteDetails> createState() => _SiteDetailsState();
}

class _SiteDetailsState extends State<SiteDetails> {
  bool? _isTapped = false;
  String? regularVal = "0";
  String? midgradeVal = "0";
  String? premiumVal = "0";
  String? ulsdVal = "0";
  bool? _requested = false;
  List requestId = [
    "345635",
    "342635",
    "345835",
    "345735",
    "345655",
  ];

  List requestDate = [
    "5/27/15",
    "10/17/14",
    "15/7/10",
    "3/7/19",
    "22/15/10",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: height,
              color: backGround_color,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.01),
                    child: Row(
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
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "Acres Marathon",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Tampa,FL",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF6E7191),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: height * 0.07,
                    child: Material(
                      color: Color(0xFF2E3840),
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              "Tanks",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Request History",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.05,
                              right: width * 0.03,
                              top: height * 0.04),
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.35,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Tank(
                                      valueChanged2: (val) {
                                        setState(() {
                                          regularVal = val;
                                        });
                                      },
                                      tankNumber: 1,
                                      valueChanged: (val) {
                                        setState(() {
                                          _isTapped = val;
                                        });
                                      },
                                      max: 8000,
                                      width: width,
                                      height: height,
                                      tankType: "Tank 1: Regular (132)",
                                    ),
                                    Tank(
                                      valueChanged2: (val) {
                                        setState(() {
                                          midgradeVal = val;
                                        });
                                      },
                                      tankNumber: 2,
                                      valueChanged: (val) {
                                        setState(() {
                                          _isTapped = val;
                                        });
                                      },
                                      width: width,
                                      max: 12000,
                                      height: height,
                                      tankType: "Tank 2: Midgrade (131)",
                                    ),
                                    Tank(
                                      valueChanged2: (val) {
                                        setState(() {
                                          premiumVal = val;
                                        });
                                      },
                                      tankNumber: 3,
                                      valueChanged: (val) {
                                        setState(() {
                                          _isTapped = val;
                                        });
                                      },
                                      width: width,
                                      max: 16000,
                                      height: height,
                                      tankType: "Tank 3: Premium (133)",
                                    ),
                                    Tank(
                                      valueChanged2: (val) {
                                        setState(() {
                                          ulsdVal = val;
                                        });
                                      },
                                      tankNumber: 4,
                                      valueChanged: (val) {
                                        setState(() {
                                          _isTapped = val;
                                        });
                                      },
                                      width: width,
                                      max: 20000,
                                      height: height,
                                      tankType: "Tank 4: ULSD (134)",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.06,
                              ),
                              InkWell(
                                onTap: () {
                                  if (_isTapped!) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        title: Text(
                                          'Request Confirmation',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 23.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                          ),
                                        ),
                                        content: Container(
                                          height: height * 0.37,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Are you sure you want to request:",
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins"),
                                              ),
                                              SizedBox(
                                                height: height * 0.05,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 5.0,
                                                    height: 5.0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(
                                                    regularVal
                                                        .toString()
                                                        .replaceAllMapped(
                                                            RegExp(
                                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                            (Match m) =>
                                                                '${m[1]},'),
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Poppins"),
                                                  ),
                                                  Text(
                                                    " Gal of ",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    "Regular",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 5.0,
                                                    height: 5.0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(
                                                    midgradeVal
                                                        .toString()
                                                        .replaceAllMapped(
                                                            RegExp(
                                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                            (Match m) =>
                                                                '${m[1]},'),
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Poppins"),
                                                  ),
                                                  Text(
                                                    " Gal of ",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    "Midgrade",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 5.0,
                                                    height: 5.0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(
                                                    premiumVal
                                                        .toString()
                                                        .replaceAllMapped(
                                                            RegExp(
                                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                            (Match m) =>
                                                                '${m[1]},'),
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Poppins"),
                                                  ),
                                                  Text(
                                                    " Gal of ",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    "Premium",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 5.0,
                                                    height: 5.0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(
                                                    ulsdVal
                                                        .toString()
                                                        .replaceAllMapped(
                                                            RegExp(
                                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                            (Match m) =>
                                                                '${m[1]},'),
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Poppins"),
                                                  ),
                                                  Text(
                                                    " Gal of ",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    "ULSD",
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      width: width * 0.32,
                                                      height: height * 0.055,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0Xffed5c62),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "Cancel",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "Poppins"),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12.0,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      setState(() {
                                                        _requested = true;
                                                      });
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                                context) =>
                                                            AlertDialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0)),
                                                          title: Text(
                                                            'Your Request has been sent!',
                                                            style: TextStyle(
                                                              fontSize: 23.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  "Poppins",
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                          content: Container(
                                                            height:
                                                                height * 0.25,
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  Common.assetImages +
                                                                      "Check.png",
                                                                  width: width *
                                                                      0.2,
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.08,
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        width *
                                                                            0.32,
                                                                    height:
                                                                        height *
                                                                            0.055,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0Xff5081db),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        "Back",
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontFamily: "Poppins"),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      width: width * 0.32,
                                                      height: height * 0.055,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0Xff5081db),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "Confirm",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  "Poppins"),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: width * 0.1),
                                  child: Container(
                                    height: height * 0.075,
                                    width: width * 0.75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: _isTapped!
                                          ? Color(0xFF5081db)
                                          : Color(0xFF3d5a89),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Submit All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins"),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.04,
                              right: width * 0.04,
                              top: height * 0.03),
                          child: Requests(
                              height: height,
                              requestId: requestId,
                              width: width,
                              requestDate: requestDate),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
