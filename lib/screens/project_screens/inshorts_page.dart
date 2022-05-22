import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';
import 'package:sizer/sizer.dart';

import '../home_page.dart';

class InshortsPage extends StatelessWidget {
  const InshortsPage({Key? key}) : super(key: key);

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
                      "assets/images/inshorts.png",
                      width: MediaQuery.of(context).size.width * 0.35,
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
                        SizedBox(height: 12 .h,),
                         Text(
                          "InShorts Clone",
                          style: TextStyle(
                              fontSize: 18 .sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2 .h,
                        ),
                        Row(
                          children:  [
                            LinkButton(
                              title: "GitHub",
                              assetImage: "assets/images/github.png",
                              url:
                                  "https://github.com/RohanPatil1/Flutter/tree/master/inShortsClone",
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            LinkButton(
                              title: "YouTube",
                              assetImage: "assets/images/yt.png",
                              url: "https://youtu.be/ykadsC4JfvA",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2 .h,
                        ),
                        BulletList(
                          strings: const [
                            "This is a clone of a popular app called Inshorts News App with Flutter SDK",
                            "This app shows news fetched from NewsApi.org API. User's can save articles for offline purpose. This data is stored using SQLite(sqlflite)",
                            "It uses Scoped Model Architecture for State Management of the application.",
                          ],
                          fontSize: 4.25 .sp,
                          fontColor: Colors.white60,
                        ),

                        const SizedBox(
                          height: 2.0,
                        ),
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
