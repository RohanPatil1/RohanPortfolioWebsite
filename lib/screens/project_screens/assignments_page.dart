import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';

import '../home_page.dart';

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.red,
                    child: Image.asset(
                      "assets/images/assignment.png",
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.76,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.blue,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Assignments App",
                          style: TextStyle(
                              fontSize: 84.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          children: const [
                            LinkButton(
                              title: "GitHub",
                              assetImage: "assets/images/github.png",
                              url:
                                  "https://github.com/RohanPatil1/Android-Development/tree/master/Assignments",
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            LinkButton(
                              title: "YouTube",
                              assetImage: "assets/images/yt.png",
                              url: "https://youtu.be/LVTC7IeaXJk",
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 16.0,
                        ),
                        BulletList(
                          strings: const [
                            "This is an Android application which shares college assignments pdf files using Firebase",
                            "It uses Firebase Realtime-Database for the data and stores pdf files in Firebase Storage",
                            "It also has push notifications implemented through Firebase Cloud Messaging",
                          ],
                          fontSize: 24.0,
                          fontColor: Colors.white60,
                        ),

                        // const Text(
                        //   "• This is an Android application which shares college assignments pdf files using Firebase.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 2.0,
                        // ),
                        // const Text(
                        //   "•  It uses Firebase Realtime-Database for the data and stores pdf files in Firebase Storage.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 2.0,
                        // ),
                        // const Text(
                        //   "• It also has push notifications implemented through Firebase Cloud Messaging.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 2.0,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
