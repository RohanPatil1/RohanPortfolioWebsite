import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';

import '../home_page.dart';

class DoodlePage extends StatelessWidget {
  const DoodlePage({Key? key}) : super(key: key);

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
                  child: Image.asset(
                    "assets/images/doodle.png",
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.cover,
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
                        SizedBox(height: 90.0,),

                        const Text(
                          "Doodle Portfolio",
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
                              title: "Website",
                              assetImage: "assets/images/web.png",
                              url:
                              "https://harshadadoodle.github.io/#/",
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            LinkButton(
                              title: "YouTube",
                              assetImage: "assets/images/yt.png",
                              url: "https://youtu.be/_iuXre9JZ4Q",
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 16.0,
                        ),
                        BulletList(
                          strings: const [
                            "This a doodle artist's portfolio website build using Flutter Web.",
                            "It is a responsive site which supports mobile, tablets and desktop sized devices. ",

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
