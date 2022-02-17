import 'package:eagle_tip/Utils/common.dart';
import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget {
  const CrudScreen({Key? key}) : super(key: key);

  @override
  _CrudScreenState createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List name = ["rAKSHTI", "FF", "ABHISEKHUI", "rAKSHTI", "FF", "ABHISEKHUI"];
    return Scaffold(
      backgroundColor: Color(0xff2B343B),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.02,
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: width * 0.06,
              ),
              SizedBox(
                width: width * 0.17,
              ),
              Image.asset(Common.assetImages + "Logo 2 2.png"),
              SizedBox(
                width: width * 0.2,
              ),
              Image.asset(
                Common.assetImages + "Group 288.png",
                width: width * 0.08,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.076,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
            height: height * 0.064,
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Color(0xff535C65),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextField(
              style: TextStyle(fontFamily: "Poppins"),
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                hintText: "Search by name",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.076,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 40,
              color: Color(0xff2B343B),
              child: Row(
                children: [
                  Container(
                    width: width * 0.2,
                    child: Text(
                      "",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: width * 0.6,
                    child: Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: width * 0.3,
                    child: Text(
                      "role",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: width * 0.44,
                    child: Text(
                      "Site",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: width * 0.3,
                    child: Text(
                      "Site",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: width * 0.2,
                    child: Text(
                      "Profile Info",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.only(top: 0),
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        decoration: BoxDecoration(
                          color: index % 2 == 0
                              ? Color(0xff2B343B)
                              : Color(0xff24292E),
                        ),
                        height: 60,
                        child: Row(
                          children: [
                            Container(
                                width: width * 0.2,
                                child: Image.asset("assets/delete.png")),
                            Container(
                              width: width * 0.6,
                              child: Text(
                                '${index + 1} ${name[index]}',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "Poppins"),
                              ),
                            ),
                            Container(
                              width: width * 0.3,
                              child: Text('Site User',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins")),
                            ),
                            Container(
                              width: width * 0.44,
                              child: Text('Acers Marathon',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins")),
                            ),
                            Image.asset("assets/info.png"),
                            SizedBox(
                              width: width * 0.04,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
