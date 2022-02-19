import 'package:eagle_tip/Utils/common.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Common.assetImages + "Logo 2 1.png",
      width: width * 0.4,
    );
  }
}
