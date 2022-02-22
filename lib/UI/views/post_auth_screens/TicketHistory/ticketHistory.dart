// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customHeader2.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class TicketHistory extends StatelessWidget {
  TicketHistory({Key? key}) : super(key: key);
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: backGround_color,
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.01),
                    child: CustomHeader2(),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "Ticket History",
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
                    "Ahmad Elizando",
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
                              "Open",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Closed",
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
                        OpenTickets(
                            openTickets: openTickets,
                            width: width,
                            height: height,
                            openTicketsDates: openTicketsDates),
                        ClosedTickets(
                            closedTicketsDates: closedTicketsDates,
                            width: width,
                            height: height,
                            closedTickets: closedTickets),
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

class OpenTickets extends StatelessWidget {
  const OpenTickets({
    Key? key,
    required this.openTickets,
    required this.width,
    required this.height,
    required this.openTicketsDates,
  }) : super(key: key);

  final List openTickets;
  final double width;
  final double height;
  final List openTicketsDates;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: openTickets.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.ticketDetails);
          },
          child: Container(
            width: width * 0.8,
            height: height * 0.07,
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.05, right: width * 0.05, top: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.06,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          openTickets[index],
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          openTicketsDates[index],
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 17.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ClosedTickets extends StatelessWidget {
  const ClosedTickets({
    Key? key,
    required this.closedTickets,
    required this.width,
    required this.height,
    required this.closedTicketsDates,
  }) : super(key: key);

  final List closedTickets;
  final double width;
  final double height;
  final List closedTicketsDates;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: closedTickets.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: width * 0.8,
          height: height * 0.07,
          child: Padding(
            padding: EdgeInsets.only(
                left: width * 0.05, right: width * 0.05, top: height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        closedTickets[index],
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        closedTicketsDates[index],
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 17.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
