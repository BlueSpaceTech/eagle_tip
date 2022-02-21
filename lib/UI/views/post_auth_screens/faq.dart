// ignore_for_file: prefer_const_constructors

import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/constants.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List FAQNames = [
    "Risus, adipiscing accumsan",
    "Eleifend tellus amet",
    "Nunc, non sagittis",
    "Proin interdum eget",
    "Felis suspendisse amet"
  ];
  List FAQdata = [
    "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. ",
    "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. ",
    "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. ",
    "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. ",
    "Risus vestibulum, risus feugiat semper velit feugiat velit. Placerat elit volutpat volutpat elit bibendum molestie eget. Convallis mattis dignissim quis tincidunt quisque. Adipiscing suspendisse faucibus aliquet a turpis odio pellentesque lectus duis. Sodales odio eu bibendum massa velit maecenas eget. Maecenas facilisis nunc tincidunt sed eget viverra porttitor feugiat. Mattis dictum sed suspendisse faucibus gravida. Id eget amet dis amet ut at in eget nam. "
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: backGround_color,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: width * 0.06,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      Image.asset(Common.assetImages + "Logo 2 2.png"),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "FAQ",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    height: height * 0.6,
                    child: ListView.builder(
                        itemCount: FAQNames.length,
                        itemBuilder: (BuildContext context, int index) {
                          return FAQ(
                            widht: width,
                            FAQdata: FAQdata,
                            height: height,
                            FAQNames: FAQNames,
                            index: index,
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FAQ extends StatefulWidget {
  FAQ({
    Key? key,
    required this.index,
    required this.FAQNames,
    required this.widht,
    required this.FAQdata,
    required this.height,
  }) : super(key: key);

  final List FAQNames;
  final int index;
  final List FAQdata;
  final double widht;
  final double height;

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  bool? isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isExpanded! ? widget.height * 0.26 : widget.height * 0.05,
      child: Column(
        children: [
          Container(
            width: widget.widht * 0.85,
            child: InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded!;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.FAQNames[widget.index],
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  ),
                  isExpanded!
                      ? Image.asset(
                          Common.assetImages + "Forward.png",
                          width: 15.0,
                        )
                      : Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 18.0,
                        ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Visibility(
            visible: isExpanded!,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Container(
                  width: widget.widht * 0.85,
                  child: Text(
                    widget.FAQdata[widget.index],
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
