import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';
import 'package:sizer/sizer.dart';
import '../home_page.dart';

class WayMapsPage extends StatelessWidget {
  const WayMapsPage({Key? key}) : super(key: key);

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
                      "assets/images/waymaps.png",
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
                        SizedBox(height: 12 .h,),
                         Text(
                          "WayMaps",
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
                                  "https://github.com/RohanPatil1/Android-Development/tree/master/WayMaps",
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            LinkButton(
                              title: "YouTube",
                              assetImage: "assets/images/yt.png",
                              url: "https://youtu.be/LVTC7IeaXJk",
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 2 .h,
                        ),
                        BulletList(
                          strings: const [
                            "This is an Android application about getting nearby places according to the user's current location",
                            "It has Maps from MapBoxSDK along with Google Maps Places API to fetch nearby places",
                            "It uses Retrofit for API handling, background services & lottie animation.",
                          ],
                          fontSize: 4.2 .sp,
                          fontColor: Colors.white60,
                        ),
                        // const Text(
                        //   "• This is an Android application about getting nearby places according to the user's current location.",
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
                        //   "•  It has Maps from MapBoxSDK along with Google Maps Places API to fetch nearby places.",
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
                        //   "• It uses Retrofit for API handling, background services & lottie animation.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),

                        // Built with Flutter, Firebase. It also uses hive for storing information such as theme, mix (playlist),tunes info,etc.
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
