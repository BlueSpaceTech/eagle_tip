import 'package:flutter/material.dart';

class CustomFAQbottom extends StatelessWidget {
  const CustomFAQbottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xff1A1F23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(children: [
            Image.asset("assets/Question.png"),
            SizedBox(
              width: 5,
            ),
            Text(
              "FAQ",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Image.asset("assets/Phone.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "Support",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
