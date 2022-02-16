import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.09),
        child: AppBar(
          backgroundColor: Color(0xff2B343B),
          title: Container(
            padding: EdgeInsets.only(top: height * 0.03),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/image1.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Ahmad Elizondo",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: height * 0.08,
              width: width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xff20272C),
              ),
              child: TextField(
                decoration: InputDecoration(
                  //  suffixIcon: Image.asset("assets/mesicon.png"),
                  border: InputBorder.none,
                  hintText: 'Message',
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontFamily: "Poppins"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
