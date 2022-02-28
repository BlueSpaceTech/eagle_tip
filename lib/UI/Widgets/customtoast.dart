import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastt extends StatefulWidget {
  Toastt({Key? key, required this.width, required this.message})
      : super(key: key);
  final double width;
  final String message;
  @override
  _ToasttState createState() => _ToasttState();
}

class _ToasttState extends State<Toastt> {
  FToast? fToast;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Responsive.isDesktop(context) ? 350 : widget.width * 0.6,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xff3F4850),
      ),
      child: Container(
        child: Text(
          widget.message,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
