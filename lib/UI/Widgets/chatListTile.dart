import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmad Elizondo",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Manager",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
