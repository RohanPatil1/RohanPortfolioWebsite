import 'package:flutter/material.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:rohan_portfolio/widgets/link_button.dart';

class ChillTunesPage extends StatelessWidget {
  const ChillTunesPage({Key? key}) : super(key: key);

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
                      "assets/images/ct.png",
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.8,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.only(right: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Chill Tunes",
                          style: TextStyle(
                              fontSize: 84.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),

                        SizedBox(
                          height: 8.0,
                        ),

                        Row(
                          children: const [
                            LinkButton(
                              title: "Play Store",
                              assetImage: "assets/images/play.png",
                              url:
                                  "https://play.google.com/store/apps/details?id=sutechs.nirvana&hl=en_IN&gl=US",
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            LinkButton(
                              title: "YouTube",
                              assetImage: "assets/images/yt.png",
                              url: "https://youtu.be/TcKABPifZT4",
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 16.0,
                        ),
                        BulletList(
                          strings: const [
                            "It is an app with all varieties of chill sounds and music such as Nature, Animals, Melodies, Lofi music.",
                            "Build with Flutter SDK along with Firebase's CloudFirestore & Storage.",
                            "It also supports downloading the tunes. This information is stored using hive, which includes data like tune's url, icon, mix, etc",
                          ],
                          fontSize: 24.0,
                          fontColor: Colors.white60,
                        )

                        // const Text(
                        //   "• It is an app with all varieties of chill sounds and music such as Nature, Animals, Melodies, Lofi music.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 4.0,
                        // ),
                        // const Text(
                        //   "• Build with Flutter SDK along with Firebase's CloudFirestore & Storage.",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 4.0,
                        // ),
                        // const Text(
                        //   "• It also supports downloading the tunes. This information is stored using hive, which includes data like tune's url, icon, mix, etc",
                        //   style: TextStyle(
                        //     fontSize: 24.0,
                        //     color: Colors.white60,
                        //   ),
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 3,
                        // ),
                        // const SizedBox(
                        //   height: 4.0,
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
