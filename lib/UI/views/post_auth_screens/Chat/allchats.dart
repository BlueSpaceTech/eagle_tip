import 'package:eagle_tip/UI/Widgets/chatListTile.dart';
import 'package:flutter/material.dart';

class AllChatScreen extends StatelessWidget {
  const AllChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Container(
        alignment: Alignment.center,
        width: width * 0.35,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff5081DB),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New Chat",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Image.asset("assets/newchat.png"),
          ],
        ),
      ),
      backgroundColor: Color(0xff2B343B),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.09, right: width * 0.09, top: height * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Image.asset("assets/Logo 2 2.png"),
                    Image.asset("assets/search.png"),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Acers Marathon",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset("assets/down.png"),
                      ],
                    ),
                    Text(
                      "Tampa, FL",
                      style: TextStyle(
                          color: Color(0xff6E7191),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatListTile(
                      height: height,
                      width: width,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
