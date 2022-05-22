import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:rohan_portfolio/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final nameTextCtrl = TextEditingController();
  final emailTextCtrl = TextEditingController();
  final messageTextCtrl = TextEditingController();

  Future sendEmail({
    required String? name,
    required String subject,
    required String email,
    required String message,
  }) async {
    String postUrl = "https://api.emailjs.com/api/v1.0/email/send";
    const serviceID = 'service_3xm65u7';
    const temID = 'template_l4dzznt';
    final userID = 'user_pI6b8sXny6xipe1V4fizq';

    final url = Uri.parse(postUrl);
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': serviceID,
          'template_id': temID,
          'user_id': userID,
          'template_params': {
            'user_name': name ?? "No Name",
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          }
        }));

    print("=====");
    print(response.body);
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery
        .of(context)
        .size
        .height;
    final w = MediaQuery
        .of(context)
        .size
        .width;
    return Stack(
      children: [
        Positioned(
          bottom: -16.h,
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
        // Align(
        //   alignment: Alignment.bottomLeft,
        //   child: Image.asset(
        //     "assets/images/luffy.png",
        //     width: 70.h,
        //     // height: h * 0.4,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        // Positioned(
        //   bottom: -6.h,
        // left: -20.w,
        //
        //   child: Transform.scale(
        //     scaleX: -1,
        //     child: Lottie.asset(
        //       'assets/anim/contacts2.json',
        //       repeat: true,
        //       reverse: true,
        //       frameRate: FrameRate.composition,
        //       width: 130.h,
        //       fit: BoxFit.contain,
        //     ),
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: w * 0.1,
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
                    width: 30.w,
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
                                      size: 3.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    "+91-9372992284",
                                    style: TextStyle(
                                        fontSize: 4.sp,
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
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0, color: Colors.white70)),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white70,
                                      size: 3.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    "prorohan8@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4.sp,
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
                            controller: nameTextCtrl,
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
                            controller: emailTextCtrl,
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
                            controller: messageTextCtrl,
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
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });

                              if (emailTextCtrl.text.isNotEmpty &&
                                  messageTextCtrl.text.isNotEmpty) {
                                await sendEmail(
                                    name: nameTextCtrl.text,
                                    subject: "NoSubject",
                                    email: emailTextCtrl.text.toString(),
                                    message:
                                    messageTextCtrl.text.toString())
                                    .then((value) {
                                  print("MAIL SENT");
                                  nameTextCtrl.clear();
                                  messageTextCtrl.clear();
                                  emailTextCtrl.clear();
                                  setState(() {
                                    isLoading = false;
                                  });
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      color: Colors.white, width: 0.2),
                                  color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 16.0),
                                child: isLoading
                                    ? CircularProgressIndicator()
                                    : Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      fontSize: 3.2.sp,
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
            ),
            const SizedBox(
              width: 65.0,
            ),
            Expanded(
              child: Container(
                // width: 100.0,
                // height: 100.0,
                // color: Colors.white,
                child: Center(
                  child:   Text(
                    "Thank You!",
                    style: TextStyle(
                        fontSize: 5.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
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
                    fontSize: 3.sp,
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
