import 'package:eagle_tip/Routes/approutes.dart';
import 'package:eagle_tip/UI/views/on-borading-tour/tour1.dart';
import 'package:flutter/material.dart';

class FinalTour extends StatelessWidget {
  const FinalTour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/retour.png"), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              top: height * 0.12,
              left: width * 0.05,
              child: TourUpContainer(
                onnext: () {
                  Navigator.pushNamed(context, AppRoutes.bottomNav);
                },
                containertype: "right",
                distance: height * 0.028,
                height: height,
                width: width,
                pageno: "6",
                head:
                    "You can rewatch the tour anytime by clicking on the help icon.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
