import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eagle_tip/Providers/user_provider.dart';
import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/message_model.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eagle_tip/Models/user.dart' as model;
import 'package:provider/provider.dart';

class ChatScreenn extends StatefulWidget {
  ChatScreenn({
    Key? key,
    required this.index,
    required this.frienduid,
    required this.friendname,
    required this.currentusername,
  }) : super(key: key);
  int index;
  final frienduid;
  final friendname;
  final currentusername;
  @override
  _ChatScreennState createState() => _ChatScreennState(frienduid, friendname);
}

class _ChatScreennState extends State<ChatScreenn> {
  final frienduid;
  final friendname;
  final currentUserUID = FirebaseAuth.instance.currentUser!.uid;
  final TextEditingController _sendcontroller = new TextEditingController();
  _ChatScreennState(this.frienduid, this.friendname);
  CollectionReference chat = FirebaseFirestore.instance.collection("chats");
  void sendmessage(String message) {
    print("entered in send");
    if (message == "") {
      return;
    } else {
      print("entered in send1");
      chat.doc(chatDocId).collection("messages").add({
        "createdOn": FieldValue.serverTimestamp(),
        "uid": currentUserUID,
        "message": message,
      }).then((value) {
        print("entered in send2");
        _sendcontroller.text = "";
      });
    }
  }

  _chatBubble(String message, bool isMe) {
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
                message,
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
                message,
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
      padding: EdgeInsets.only(left: 15, right: 10),
      alignment: Alignment.centerLeft,
      height: height * 0.08,
      width: width * 0.92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xff20272C),
      ),
      child: TextField(
        controller: _sendcontroller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () {
                sendmessage(_sendcontroller.text);
              },
              child: Image.asset("assets/send.png")),
          border: InputBorder.none,
          hintText: 'Message',
          hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.6), fontFamily: "Poppins"),
        ),
      ),
    );
  }

  var chatDocId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chat
        .where("users", isEqualTo: {frienduid: null, currentUserUID: null})
        .limit(1)
        .get()
        .then((QuerySnapshot querySnapshot) {
          if (querySnapshot.docs.isNotEmpty) {
            chatDocId = querySnapshot.docs.single.id;
          } else {
            chat.add({
              'users': {frienduid: null, currentUserUID: null},
              "between": [frienduid, currentUserUID],
              "user1": friendname,
              "user2": widget.currentusername,
              "uid1": currentUserUID,
              "uid2": frienduid,
            }).then((value) => {chatDocId = value.id});
          }
        })
        .catchError((err) {});
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
                Visibility(
                  visible: Responsive.isDesktop(context) ? false : true,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
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
                          friendname,
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
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection("chats")
              .doc(chatDocId)
              .collection("messages")
              .orderBy("createdOn", descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("There's some error");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            }
            return Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    padding: EdgeInsets.all(20),
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      final document = snapshot.data?.docs[index];
                      // final Message message = messages[index];
                      //  final bool isMe = message.sender == "currentUser";
                      /*
                    final bool isSameUser = prevUserId == "";
                    prevUserId = message.sender.id;
                    f
      */
                      final bool isMe = document!["uid"] == currentUserUID;
                      return _chatBubble(document["message"], isMe);
                    },
                  ),
                ),
                _sendMessageArea(height, width),
              ],
            );
          }),
    );
  }
}
