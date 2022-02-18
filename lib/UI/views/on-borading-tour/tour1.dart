import 'package:eagle_tip/Routes/approutes.dart';
import 'package:flutter/material.dart';

class Tour1 extends StatelessWidget {
  const Tour1({Key? key}) : super(key: key);

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
              image: AssetImage("assets/tour1.png"), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              top: height * 0.58,
              left: width * 0.05,
              child: TourUpContainer(
                onnext: () {
                  Navigator.pushNamed(context, AppRoutes.tour2);
                },
                containertype: "arrowup",
                distance: height * 0.04,
                height: height,
                width: width,
                pageno: "1",
                head: "Tap on request fuel to place an order",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TourUpContainer extends StatelessWidget {
  const TourUpContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.pageno,
    required this.head,
    required this.distance,
    required this.containertype,
    required this.onnext,
  }) : super(key: key);

  final double height;
  final double width;
  final String pageno;
  final String head;
  final double distance;
  final String containertype;
  final Function onnext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      width: width * 0.9,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/${containertype}container.png"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          children: [
            SizedBox(
                height:
                    containertype == "down" ? height * 0.014 : height * 0.045),
            Text(
              head,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(
              height: distance,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pageno == "6" ? "" : '${pageno}/5',
                  style: TextStyle(
                    color: Color(0xffB8B8B8),
                  ),
                ),
                Row(
                  children: [
                    if (pageno == "6") ...[
                      Text(
                        "   ",
                      ),
                    ] else if (pageno == "5") ...[
                      Text(
                        "   ",
                      ),
                    ] else ...[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.finaltour);
                        },
                        child: Text(
                          "skip",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                    SizedBox(
                      width: width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        onnext();
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff5081DB),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          pageno == "6"
                              ? "Ok"
                              : pageno == "5"
                                  ? "Done"
                                  : "Next",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}