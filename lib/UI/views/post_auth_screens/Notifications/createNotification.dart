// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/Widgets/customContainer.dart';
import 'package:eagle_tip/UI/Widgets/customNav.dart';
import 'package:eagle_tip/UI/Widgets/customappheader.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';

class CreateNotification extends StatefulWidget {
  CreateNotification({Key? key}) : super(key: key);

  @override
  State<CreateNotification> createState() => _CreateNotificationState();
}

class _CreateNotificationState extends State<CreateNotification> {
  String dropdownvalue = 'All Users';

  // List of items in our dropdown menu
  var items = [
    'All Users',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Responsive.isDesktop(context)
          ? MenuButton(isTapped: false, width: width)
          : SizedBox(),
      body: SingleChildScrollView(
        child: Container(
          height: height * 1.2,
          color: backGround_color,
          child: Padding(
            padding: EdgeInsets.only(
              top: height * 0.02,
              left: Responsive.isDesktop(context) ? 0.0 : width * 0.03,
              right: Responsive.isDesktop(context) ? 0.0 : width * 0.02,
            ),
            child: Column(
              children: [
                Navbar(
                  width: width,
                  height: height,
                  text1: "Home",
                  text2: "Sites",
                  widget3: Navtext(text: "Messages", width: width),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                CustomContainer(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width * 0.02,
                        right: width * 0.02),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CreateNotifyTextField(
                              labelText: "Title",
                              isactive: true,
                            ),
                            CreateNotifyTextField(
                              labelText: "Link (Optional)",
                              isactive: true,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.42,
                          padding: EdgeInsets.only(
                              top: 10.0,
                              left: width * 0.01,
                              right: width * 0.02),
                          height: height * 0.09,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Audience",
                                style: TextStyle(
                                    color: Color(0xff6e7191),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500),
                              ),
                              Expanded(
                                child: DropdownButton(
                                  // Initial Value
                                  value: dropdownvalue,
                                  underline: SizedBox(),
                                  itemHeight: 48.0,
                                  isExpanded: true,

                                  // Down Arrow Icon
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  alignment: Alignment.center,
                                  // Array list of items
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          width: width * 0.42,
                          padding: EdgeInsets.only(
                              left: width * 0.01, right: width * 0.06),
                          height: height * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: "Poppins"),
                            cursorColor: Colors.black12,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Message",
                              labelStyle: TextStyle(
                                  color: Color(0xff6e7191),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.08,
                              height: height * 0.058,
                              decoration: BoxDecoration(
                                color: Color(0XffED5C62),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.008,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Container(
                              width: width * 0.08,
                              height: height * 0.058,
                              decoration: BoxDecoration(
                                color: Color(0Xff5081db),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.008,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  width: width,
                  topPad: 10.0,
                  height: height,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreateNotifyTextField extends StatelessWidget {
  const CreateNotifyTextField(
      {Key? key, required this.isactive, required this.labelText})
      : super(key: key);
  final bool? isactive;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();
    return Container(
      width: width * 0.2,
      padding: EdgeInsets.only(left: width * 0.01, right: width * 0.06),
      height: height * 0.06,
      decoration: BoxDecoration(
        color: isactive! ? Colors.white : Color(0xffEFF0F6).withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: TextFormField(
        textAlign: TextAlign.left,
        enabled: isactive,
        controller: controller,
        style: TextStyle(fontFamily: "Poppins"),
        cursorColor: Colors.black12,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: TextStyle(
              color: Color(0xff6e7191),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
