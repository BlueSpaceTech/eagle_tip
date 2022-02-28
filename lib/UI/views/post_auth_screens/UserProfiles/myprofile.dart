// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/custom_webbg.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistory.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/editUser.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/userProfile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/detectPlatform.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  // bool? isOpen = true;
  List openTickets = [
    "Can't open app",
    "Can't open app",
  ];
  List openTicketsDates = [
    "5/27/15",
    "5/27/15",
  ];
  List closedTickets = [
    "Can't open app",
    "Invalid Passworrd",
  ];
  List closedTicketsDates = [
    "5/27/15",
    "5/27/15",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Responsive.isDesktop(context)
          ? MenuButton(isTapped: false, width: width)
          : SizedBox(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Responsive.isDesktop(context) ? height * 1.15 : height,
            color: backGround_color,
            child: Padding(
              padding: EdgeInsets.only(
                  top: Responsive.isDesktop(context) ? 0.0 : height * 0.02),
              child: Responsive.isDesktop(context)
                  ? DesktopMyProfile(
                      height: height,
                      width: width,
                      openTickets: openTickets,
                      openTicketsDates: openTicketsDates,
                      closedTickets: closedTickets,
                      closedTicketsDates: closedTicketsDates)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Logo(width: width),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return EditUser();
                            }));
                          },
                          child: UserDetails(
                            height: Responsive.isTablet(context)
                                ? height * 2
                                : PlatformInfo().isWeb()
                                    ? height * 1.2
                                    : height * 1.05,
                            width: width,
                            boxTitle: "edit profile",
                          ),
                        ),
                        ContactInfo(height: height, width: width),
                        Divider(
                          color: Color(0xFF2E3840),
                          thickness: 3.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.08, right: width * 0.04),
                          child: SitesData(
                              height: Responsive.isTablet(context)
                                  ? height * 1.64
                                  : PlatformInfo().isWeb()
                                      ? height * 1.2
                                      : height * 1.05,
                              width: width),
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
        ),
      ),
    );
  }
}

class DesktopMyProfile extends StatefulWidget {
  DesktopMyProfile({
    Key? key,
    required this.height,
    required this.width,
    required this.openTickets,
    required this.openTicketsDates,
    required this.closedTickets,
    required this.closedTicketsDates,
  }) : super(key: key);

  final double height;
  final double width;
  final List openTickets;
  final List openTicketsDates;
  final List closedTickets;
  final List closedTicketsDates;

  @override
  State<DesktopMyProfile> createState() => _DesktopMyProfileState();
}

class _DesktopMyProfileState extends State<DesktopMyProfile> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.height * 0.01,
      ),
      child: Column(
        children: [
          Navbar(
            width: widget.width,
            height: widget.height,
            text1: "Home",
            text2: "Sites",
          ),
          SizedBox(
            height: widget.height * 0.01,
          ),
          Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: WebBg(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: widget.width * 0.02, right: widget.width * 0.04),
                child: Container(
                  width: widget.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: widget.width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Common.assetImages + "Ellipse 45.png",
                                        width: widget.width * 0.045,
                                      ),
                                      SizedBox(
                                        width: widget.width * 0.02,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ahmad Elizondo",
                                            style: TextStyle(
                                                fontSize: widget.width * 0.011,
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
                                                fontSize: widget.width * 0.01,
                                                color: Color(0xFFD9DBE9),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: widget.width * 0.1,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, AppRoutes.editUser);
                                        },
                                        child: Container(
                                          width: widget.width * 0.06,
                                          height: widget.height * 0.05,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Color(0xFF5081DB),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Edit Profile",
                                            style: TextStyle(
                                              fontSize: widget.width * 0.008,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.04,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                    indent: 1,
                                    endIndent: 200,
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.04,
                                  ),
                                  Container(
                                    height: widget.height * 0.14,
                                    width: widget.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Contact Details",
                                          style: TextStyle(
                                              fontSize: widget.width * 0.011,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(
                                          height: widget.height * 0.02,
                                        ),
                                        Container(
                                          width: widget.width * 0.11,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  Common.assetImages +
                                                      "call.png",
                                                  width: widget.width * 0.013,
                                                ),
                                                Text(
                                                  "(209) 555-0104",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins"),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: widget.height * 0.02,
                                        ),
                                        Container(
                                          width: widget.width * 0.124,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  Common.assetImages +
                                                      "mail.png",
                                                  width: widget.width * 0.013,
                                                ),
                                                Text(
                                                  "ahmad@site.com",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins"),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.025,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                    indent: 1,
                                    endIndent: 200,
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.04,
                                  ),
                                  Text(
                                    "Sites",
                                    style: TextStyle(
                                        fontSize: widget.width * 0.011,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.02,
                                  ),
                                  Row(
                                    children: [
                                      DesktopSiteData(
                                          siteloc: "Tampa, Fl",
                                          sitename: "Acres Marathon",
                                          imgPath: "site11",
                                          width: widget.width,
                                          height: widget.height),
                                      SizedBox(
                                        width: widget.width * 0.036,
                                      ),
                                      DesktopSiteData(
                                          siteloc: "Tampa, Fl",
                                          sitename: "Bridge Marathon",
                                          imgPath: "site21",
                                          width: widget.width,
                                          height: widget.height),
                                    ],
                                  ),
                                  SizedBox(
                                    height: widget.height * 0.06,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          width: Responsive.isDesktop(context)
                              ? widget.width * 0.1
                              : widget.width * 0.9,
                          height: widget.height * 0.85,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  Responsive.isDesktop(context) ? 0.6 : 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: widget.width * 0.04,
                                top: widget.height * 0.02,
                                right: widget.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tickets",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  height: widget.height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: widget.width * 0.06,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (!isOpen) {
                                                  isOpen = true;
                                                }
                                              });
                                            },
                                            child: Text(
                                              "Open",
                                              style: isOpen
                                                  ? TextStyle(
                                                      fontSize:
                                                          widget.width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontFamily: "Poppins",
                                                    )
                                                  : TextStyle(
                                                      fontSize:
                                                          widget.width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFFCFCFC),
                                                      fontFamily: "Poppins",
                                                    ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: widget.width * 0.008,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              if (isOpen) {
                                                setState(() {
                                                  isOpen = false;
                                                  print(isOpen);
                                                });
                                              }
                                            },
                                            child: Text(
                                              "Close",
                                              style: !isOpen
                                                  ? TextStyle(
                                                      fontSize:
                                                          widget.width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontFamily: "Poppins",
                                                    )
                                                  : TextStyle(
                                                      fontSize:
                                                          widget.width * 0.008,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFFCFCFC),
                                                      fontFamily: "Poppins",
                                                    ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: widget.height * 0.05,
                                ),
                                isOpen
                                    ? Expanded(
                                        child: OpenTickets(
                                            openTickets: widget.openTickets,
                                            width: widget.width * 0,
                                            height: widget.height,
                                            openTicketsDates:
                                                widget.openTicketsDates),
                                      )
                                    : Expanded(
                                        child: ClosedTickets(
                                            closedTickets: widget.closedTickets,
                                            width: widget.width * 0,
                                            height: widget.height,
                                            closedTicketsDates:
                                                widget.closedTicketsDates),
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: widget.width * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
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
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.ticketHistory);
            },
            child: MiscBox(
              width: width,
              MiscName: "Tickets History",
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.settings);
              },
              child: MiscBox(width: width, MiscName: "Settings"))
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
      height: Responsive.isDesktop(context) ? height * 0.2 : height * 0.14,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sites",
            style: TextStyle(
                fontSize: Responsive.isDesktop(context) ? width * 0.011 : 15.0,
                fontFamily: "Poppins",
                fontWeight: Responsive.isDesktop(context)
                    ? FontWeight.w500
                    : FontWeight.w600,
                color: Colors.white),
          ),
          Visibility(
            visible: Responsive.isMobile(context),
            child: SizedBox(
              height: height * 0.02,
            ),
          ),
          Responsive.isDesktop(context)
              ? Row(
                  children: [
                    SiteRow(
                      width: width,
                      sitename: "Acres Marathon",
                      siteloc: " Tampa,Fl.",
                      imgpath: "site11",
                    ),
                    SizedBox(
                      width: width * 0.036,
                    ),
                    SiteRow(
                      width: width,
                      sitename: "Bridge Marathon",
                      siteloc: " NP Richey,Fl",
                      imgpath: "site21",
                    ),
                  ],
                )
              : Column(
                  children: [
                    SiteRow(
                      width: width,
                      sitename: "Acres Marathon. Tampa,Fl.",
                      siteloc: " Tampa,Fl.",
                      imgpath: "Group 268",
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SiteRow(
                      width: width,
                      sitename: "Bridge Marathon. NP Richey,Fl",
                      siteloc: " NP Richey,Fl",
                      imgpath: "Group 68",
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class SiteRow extends StatelessWidget {
  SiteRow({
    Key? key,
    required this.width,
    required this.siteloc,
    required this.sitename,
    required this.imgpath,
  }) : super(key: key);

  final double width;
  final String sitename;
  final String siteloc;
  final String imgpath;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Responsive.isDesktop(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Common.assetImages + "$imgpath.png",
                width: width * 0.08,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                sitename,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              Text(
                siteloc,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.007,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
            ],
          )
        : Row(
            children: [
              Image.asset(
                Common.assetImages + "$imgpath.png",
                width: width * 0.06,
              ),
              SizedBox(
                width: 14.0,
              ),
              Row(
                children: [
                  Text(
                    sitename,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    siteloc,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                ],
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
    return Responsive.isDesktop(context)
        ? Container(
            height: height * 0.14,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contact Details",
                  style: TextStyle(
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                DetailsRow(
                    detail: "(209) 555-0104",
                    height: height,
                    imgpath: "call",
                    width: width),
                SizedBox(
                  height: height * 0.02,
                ),
                DetailsRow(
                    detail: "ahmad@site.com",
                    height: height,
                    imgpath: "mail",
                    width: width),
              ],
            ),
          )
        : Container(
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
    return Responsive.isDesktop(context)
        ? Container(
            width: width * 0.113,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Common.assetImages + "$imgpath.png",
                    width: width * 0.013,
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
          )
        : Container(
            height: height * 0.07,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
