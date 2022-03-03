import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    Key? key,
    required this.height,
    required this.width,
    required this.doc,
  }) : super(key: key);
  final double height;
  final double width;
  final DocumentSnapshot doc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: height * 0.03),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/image1.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: Responsive.isDesktop(context) ? width * 0.18 : width * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doc["name"],
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "yesterday",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffD9DBE9),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 20,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xff5081DB)),
            child: Text(
              "2",
              style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            ),
          ),
        ],
      ),
    );
  }
}
