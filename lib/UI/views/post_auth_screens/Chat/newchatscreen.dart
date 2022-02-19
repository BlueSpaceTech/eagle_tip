import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/message_model.dart';
import 'package:flutter/material.dart';

class ChatScreenn extends StatefulWidget {
  @override
  _ChatScreennState createState() => _ChatScreennState();
}

class _ChatScreennState extends State<ChatScreenn> {
  _chatBubble(Message message, bool isMe) {
    if (isMe) {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff5081DB),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  _sendMessageArea(double height, double width) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.only(left: 15),
      alignment: Alignment.centerLeft,
      height: height * 0.08,
      width: width * 0.92,
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
              color: Colors.white.withOpacity(0.6), fontFamily: "Poppins"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    int prevUserId;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.09),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff2B343B),
          title: Container(
            padding: EdgeInsets.only(top: height * 0.03),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.useprofile);
                  },
                  child: Container(
                    width: width * 0.5,
                    child: Row(
                      children: [
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
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0XFF3F4850),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender == "currentUser";
                /*
                final bool isSameUser = prevUserId == "";
                prevUserId = message.sender.id;
*/
                return _chatBubble(message, isMe);
              },
            ),
          ),
          _sendMessageArea(height, width),
        ],
      ),
    );
  }
}
