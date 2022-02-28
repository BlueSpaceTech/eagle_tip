import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/chatListTile.dart';
import 'package:eagle_tip/UI/Widgets/logo.dart';
import 'package:eagle_tip/UI/Widgets/newchatListtile.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/Chat/allchats.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class NewChatScreen extends StatefulWidget {
  const NewChatScreen({Key? key}) : super(key: key);

  @override
  _NewChatScreenState createState() => _NewChatScreenState();
}

class _NewChatScreenState extends State<NewChatScreen> {
  @override
  Widget build(BuildContext context) {
    List siteImg = ["site1", "site2"];
    List siteName = ["Acres Marathon", "Akron Marathon"];
    List sitelocation = ["Tampa,FL", "Leesburg,FL"];
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
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
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.text,
                        child: NewChatListTile(
                          height: height,
                          width: width,
                        ),
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
