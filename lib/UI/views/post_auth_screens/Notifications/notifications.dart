// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eagle_tip/UI/views/post_auth_screens/Notifications/particularNotification.dart';
import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> notifyNames = [
    "Hurricane Coming!",
    "Edget Iaoreet",
    "Vel mauris",
    "Dapibus massa",
    "Diam dolor"
  ];

  List<String> notifyDates = [
    "Today",
    "9/22/16",
    "6/9/14",
    "2/11/12",
    "5/7/16"
  ];

  List isNew = [true, true, false, false, false];

  int _notifyNumberGenerator() {
    int counter = 0;
    for (int i = 0; i < isNew.length; i++) {
      if (isNew[i] == true) {
        counter = counter + 1;
      }
    }
    return counter;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backGround_color,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.22,
                  ),
                  Image.asset(Common.assetImages + "Logo 2 2.png"),
                  SizedBox(
                    width: width * 0.15,
                  ),
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
                height: height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08),
                child: Row(
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFED5C62),
                        radius: 8.0,
                        child: Center(
                          child: Text(
                            _notifyNumberGenerator().toString(),
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: height * 0.7,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: notifyNames.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Notify(
                          valueChanged: (val) {
                            setState(() {
                              isNew[index] = val;
                            });
                          },
                          width: width,
                          isnew: isNew[index],
                          index: index,
                          height: height,
                          notifyNames: notifyNames,
                          notifyDates: notifyDates);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Notify extends StatefulWidget {
  const Notify({
    Key? key,
    required this.width,
    required this.height,
    required this.notifyNames,
    required this.index,
    required this.isnew,
    required this.notifyDates,
    required this.valueChanged,
  }) : super(key: key);

  final double width;
  final bool isnew;
  final double height;
  final List<String> notifyNames;
  final int index;
  final ValueChanged valueChanged;
  final List<String> notifyDates;

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final newNotify = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SpecificNotification(
                    notifyName: widget.notifyNames[widget.index],
                    notifyContent:
                        "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. Diam aenean ullamcorper viverra sed tincidunt. Volutpat amet et scelerisque lacus, vitae rhoncus iaculis. In egestas a cras orci cras. Neque at magna nunc turpis. Leo mattis porttitor sed nisl. Tortor tincidunt et sit nullam cras fames ac. Eget ac ultrices phasellus diam nam massa. Egestas risus amet, convallis felis faucibus. Quis odio non duis sollicitudin massa urna luctus vel. Est maecenas a diam et tellus. Pellentesque lobortis tincidunt aliquet quam et turpis. Erat in eget tortor, morbi a venenatis.")));
        setState(() {
          widget.valueChanged(newNotify);
        });
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0, right: widget.width * 0.06),
        child: Container(
          height: widget.height * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: widget.width * 0.5,
                child: Row(
                  children: [
                    widget.isnew
                        ? Image.asset(
                            Common.assetImages + "Rectangle 522.png",
                            height: widget.height * 0.05,
                          )
                        : SizedBox(),
                    SizedBox(
                      width: widget.width * 0.07,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.notifyNames[widget.index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          widget.notifyDates[widget.index],
                          style: TextStyle(
                            color: Color(0xFFD9DBE9),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
