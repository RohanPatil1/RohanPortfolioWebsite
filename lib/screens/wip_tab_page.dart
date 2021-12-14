import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/rain_bg.dart';
import 'dart:ui' as ui;

import '../constants.dart';
import 'package:parallax_rain/parallax_rain.dart';

class WIP_Tab extends StatelessWidget {
  const WIP_Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: RainBG(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(42.0),
                      bottomLeft: Radius.circular(42.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Work In Progress",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Please open the site on desktop/laptop devices.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -52,
              right: 0,
              left: 0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/cherrytree.png",
                    fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  )),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),

                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.54,
                    decoration: BoxDecoration(
                        color: blackBG.withOpacity(0.7),
                        border: Border.all(color: Colors.white70, width: 0.3),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0,horizontal: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Rohan Patil",
                            style:
                            TextStyle(fontSize: 52.0, fontWeight: FontWeight.w600,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Mobile App Developer",
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600,color: Colors.white70),
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 32,
                              ),
                              SizedBox(width: 16.0,),
                              Text(
                                "prorohan8@gmail.com",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontSize: 16.0, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 32,
                              ),
                              SizedBox(width: 16.0,),
                              Text(
                                "91+ 9372992284",
                                style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 16.0, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
