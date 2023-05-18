import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class custom_stack extends StatelessWidget {
  const custom_stack({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: SizedBox(
                child: Container(
                  /*  height: screenHeight * 0.25, */
                  width: screenWidth * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: kElevationToShadow[2],
                  ),
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 15,
                              color: Color.fromARGB(255, 10, 64, 108),
                            ),
                            label: Text(
                              "INVITE",
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 64, 108),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 80),
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Nikhil Wipra Das\nNikhil Wipra Das'),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                LinearPercentIndicator(
                                  barRadius: Radius.circular(10),
                                  width: screenWidth * 0.33,
                                  lineHeight: 15.0,
                                  percent: 0.2,
                                  progressColor:
                                      Color.fromARGB(255, 10, 73, 125),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 5),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Coffee | Buisness | Friendship",
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, right: 20),
                              child: Text(
                                "Hi community, I am open to new connections. I am an UI/UX and a Graphic designer",
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      "NW",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 43, 73),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
