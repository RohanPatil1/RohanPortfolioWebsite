import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';
import 'package:sizer/sizer.dart';
import '../home_page.dart';

class AnimeInstaPage extends StatelessWidget {
  const AnimeInstaPage({Key? key}) : super(key: key);

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
                      "assets/images/animeInsta.png",
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.86,

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12 .h,),

                       Text(
                        "Anime Instagram",
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
                            "https://github.com/RohanPatil1/Flutter/tree/master/InstagramClone",
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          LinkButton(
                            title: "YouTube",
                            assetImage: "assets/images/yt.png",
                            url: "https://youtu.be/ky_Ih3s7tdc",
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 2 .h,
                      ),
                      BulletList(
                        strings: const [
                          "This is an Flutter based application which is a cloned version of Instagram.",
                          "It uses Firebase for Posts & Follow/Following features.",
                          "It has an unique anime themed design UI.",
                        ],
                        fontSize: 5 .sp,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
