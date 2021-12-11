import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

import 'package:rohan_portfolio/constants.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: -128,
          // alignment: Alignment.bottomCenter,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "assets/images/flowers.png",
              width: w,
              // height: h * 0.25,
              // fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            "assets/images/luffy.png",
            width: h * 0.7,
            // height: h * 0.4,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: w * 0.3,
            ),
            const SizedBox(
              width: 65.0,
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                  child: Container(
                    width: 400,
                    // height: 600,
                    padding:
                        EdgeInsets.symmetric(vertical: 34.0, horizontal: 24.0),
                    decoration: BoxDecoration(
                        color: blackBG.withOpacity(0.7),
                        border: Border.all(color: Colors.white70, width: 0.3),
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0, color: Colors.white70)),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.0,
                                  ),
                                  Text(
                                    "+91-9372992284",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0, color: Colors.white70)),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.0,
                                  ),
                                  Text(
                                    "prorohan8@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          const Text(
                            "Drop a message!",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    const Color(0xFFffffff).withOpacity(0.9)),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    const Color(0xFFffffff).withOpacity(0.9)),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            maxLines: 7,
                            decoration: InputDecoration(
                                hintText: "Message",
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    const Color(0xFFffffff).withOpacity(0.9)),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          MaterialButton(
                            onPressed: () {
                              print("Hello");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      color: Colors.white, width: 0.2),
                                  color: Colors.white),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "CONTACT ME",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 4.0,
                    width: 16.0,
                    color: Colors.white,
                  ),
                  Container(
                    height: 4.0,
                    width: 100.0,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 4.0,
                    width: 16.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
