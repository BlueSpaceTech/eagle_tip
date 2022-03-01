// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customHeader2.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/TicketHistory/ticketHistoryDetail.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:intl/intl.dart';
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
                          width: width,
                          height: height,
                        ),
                        ClosedTickets(
                          width: width,
                          height: height,
                        ),
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

class OpenTickets extends StatefulWidget {
  const OpenTickets({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<OpenTickets> createState() => _OpenTicketsState();
}

class _OpenTicketsState extends State<OpenTickets> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection("tickets").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something Went wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView.builder(
            itemCount: snapshot.data?.docs.length.toInt(),
            itemBuilder: (BuildContext context, int index) {
              final document = snapshot.data?.docs[index];
              if (document!["isopen"]) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TicketDetail(
                                ticketTitle: document["messages"][0]["title"],
                                status: document["isopen"] ? "Open" : "Closed",
                                siteName: document["sites"][0],
                                ticketMessage: document["messages"][0]
                                    ["description"],
                                userName: document["name"],
                                date: DateFormat('dd/MM/yyyy')
                                    .format(DateTime.parse(document["timestamp"]
                                        .toDate()
                                        .toString()))
                                    .toString())));
                  },
                  child: Container(
                    width: widget.width * 0.8,
                    height: widget.height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: widget.width * 0.05,
                          right: widget.width * 0.05,
                          top: widget.height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: widget.height * 0.06,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  document["messages"][0]["title"].toString(),
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  DateFormat('dd/MM/yyyy')
                                      .format(DateTime.parse(
                                          document["timestamp"]
                                              .toDate()
                                              .toString()))
                                      .toString(),
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
              }
              return SizedBox();
            },
          );
        });
  }
}

class ClosedTickets extends StatefulWidget {
  const ClosedTickets({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<ClosedTickets> createState() => _ClosedTicketsState();
}

class _ClosedTicketsState extends State<ClosedTickets> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection("tickets").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something Went wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView.builder(
            itemCount: snapshot.data?.docs.length.toInt(),
            itemBuilder: (BuildContext context, int index) {
              final document = snapshot.data?.docs[index];
              if (!document!["isopen"]) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TicketDetail(
                                ticketTitle: document["messages"][0]["title"],
                                status: document["isopen"] ? "Open" : "Closed",
                                siteName: document["sites"][0],
                                ticketMessage: document["messages"][0]
                                    ["description"],
                                userName: document["name"],
                                date: DateFormat('dd/MM/yyyy')
                                    .format(DateTime.parse(document["timestamp"]
                                        .toDate()
                                        .toString()))
                                    .toString())));
                  },
                  child: Container(
                    width: widget.width * 0.8,
                    height: widget.height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: widget.width * 0.05,
                          right: widget.width * 0.05,
                          top: widget.height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: widget.height * 0.06,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  document["messages"][0]["title"].toString(),
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  DateFormat('dd/MM/yyyy')
                                      .format(DateTime.parse(
                                          document["timestamp"]
                                              .toDate()
                                              .toString()))
                                      .toString(),
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
              }
              return SizedBox();
            },
          );
        });
  }
}
