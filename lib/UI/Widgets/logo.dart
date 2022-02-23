import 'package:eagle_tip/Utils/common.dart';
import 'package:eagle_tip/Utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/Logo 2 1.svg",
      width: Responsive.isDesktop(context) ? 200 : width * 0.42,
    );
  }
}
