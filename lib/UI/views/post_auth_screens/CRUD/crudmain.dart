import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/CRUD/Add%20New%20User/Owner/addUserOwner.dart';
import 'package:eagle_tip/UI/views/post_auth_screens/UserProfiles/myprofile.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget {
  const CrudScreen({Key? key}) : super(key: key);

  @override
  _CrudScreenState createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  deletUserDialog(double height, double width) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text(
          'Delete User',
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            color: Colors.black,
          ),
        ),
        content: Container(
          height: height * 0.2,
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Are you sure you want to delete',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: Color(0xff14142B))),
                    TextSpan(
                        text: ' Ahmad Elizondo ?',
                        style: TextStyle(
                            color: Color(0xff14142B),
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: width * 0.32,
                      height: height * 0.055,
                      decoration: BoxDecoration(
                        color: Color(0xffED5C62),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Back",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: width * 0.32,
                      height: height * 0.055,
                      decoration: BoxDecoration(
                        color: Color(0Xff28519D),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List Site = [
      "All",
      "Acers Marathon",
      "Bridge Marathon",
      "Clarks Marathon",
      "Huntington Marathon"
    ];
    List Roles = ["Site Manager", "Site User"];
    List name = ["rAKSHTI", "FF", "ABHISEKHUI", "rAKSHTI", "FF", "ABHISEKHUI"];

    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.addUserOwner);
        },
        child: Container(
          alignment: Alignment.center,
          width: width * 0.42,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff5081DB),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add new user",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Icon(Icons.add, color: Colors.white),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff2B343B),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: CustomAppheader(width: width),
            ),
            SizedBox(
              height: height * 0.076,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        left: width * 0.06, right: width * 0.06),
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
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.5)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Site",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < Site.length; i++) ...{
                        SiteChip(
                          siteName: Site[i],
                          height: height,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      },
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "Role",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < Roles.length; i++) ...{
                        SiteChip(
                          siteName: Roles[i],
                          height: height,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      },
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
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
                      width: width * 0.56,
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
                physics: NeverScrollableScrollPhysics(),
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
                              GestureDetector(
                                onTap: () {
                                  deletUserDialog(height, width);
                                },
                                child: Container(
                                    width: width * 0.2,
                                    child: Image.asset("assets/delete.png")),
                              ),
                              Container(
                                width: width * 0.56,
                                child: Text(
                                  '${index + 1} ${name[index]}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
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
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.useprofile);
                                  },
                                  child: Image.asset("assets/info.png")),
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
      ),
    );
  }
}
