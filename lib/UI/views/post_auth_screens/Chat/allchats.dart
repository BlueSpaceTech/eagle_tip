import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/chatListTile.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/message_main.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/newchatscreen.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Sites/sites.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllChatScreen extends StatelessWidget {
  AllChatScreen({Key? key}) : super(key: key);
  List siteImg = ["site1", "site2"];
  List siteName = ["Acres Marathon", "Akron Marathon"];
  List sitelocation = ["Tampa,FL", "Leesburg,FL"];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.newchat);
        },
        child: Container(
          alignment: Alignment.center,
          width: Responsive.isDesktop(context) ? 200 : width * 0.35,
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
      ),
      backgroundColor: Color(0xff2B343B),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: Responsive.isDesktop(context) ? width * 0.01 : width * 0.09,
              right:
                  Responsive.isDesktop(context) ? width * 0.01 : width * 0.09,
              top: height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Logo(width: width),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: height * 0.5,
                        color: Color(0xff3F4850),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              "Choose another site",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.08),
                              itemBuilder: (BuildContext context, int index) {
                                return SiteDett(
                                    width: width,
                                    siteImg: siteImg,
                                    index: index,
                                    siteName: siteName,
                                    sitelocation: sitelocation);
                              },
                              itemCount: siteImg.length,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
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
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (Responsive.isDesktop(context)) {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MessageMain(
                                  index: index,
                                ),
                              ));
                        } else {
                          Navigator.pushNamed(
                              context, AppRoutes.chattingscreen);
                        }
                      },
                      child: ChatListTile(
                        height: height,
                        width: width,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class SiteDett extends StatelessWidget {
  const SiteDett({
    Key? key,
    required this.index,
    required this.width,
    required this.siteImg,
    required this.siteName,
    required this.sitelocation,
  }) : super(key: key);

  final double width;
  final List siteImg;
  final List siteName;
  final int index;
  final List sitelocation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(bottom: 14.0),
        child: Container(
          width: width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      Common.assetImages + "${siteImg[index]}.png",
                      width: width * 0.14,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          siteName[index],
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          sitelocation[index],
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xFFd9dbe9)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
