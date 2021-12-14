import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:rohan_portfolio/constants.dart';

class RainBG extends StatefulWidget {
  RainBG({Key? key}) : super(key: key);

  @override
  _RainBGState createState() => _RainBGState();
}

class _RainBGState extends State<RainBG> {
  final Key parallaxOne = GlobalKey();
  final Key parallaxTwo = GlobalKey();
  final Key parallaxThree = GlobalKey();
  final Key parallaxFour = GlobalKey();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Center(
        child: ParallaxRain(
          key: parallaxOne,
          rainIsInBackground: true,
          trail: true,
          dropFallSpeed: 0.3,
          // numberOfDrops: 42,
          dropWidth: 0.4,

          dropColors: const [

            Colors.pinkAccent,
            Colors.blueAccent,
            Colors.pink,

            Colors.purple
          ],

        ),
      ),
    );
  }
}