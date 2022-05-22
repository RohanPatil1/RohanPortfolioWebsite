import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rohan_portfolio/constants.dart';
import 'package:rohan_portfolio/utils/utils.dart';
import 'package:rohan_portfolio/widgets/bullet_list.dart';
import 'package:sizer/sizer.dart';

class InternshipPage extends StatefulWidget {
  const InternshipPage({Key? key}) : super(key: key);

  @override
  _InternshipPageState createState() => _InternshipPageState();
}

class _InternshipPageState extends State<InternshipPage> {
  PageController intController = PageController();
  ScrollController scrollController = ScrollController();
  CarouselController internCarouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    intController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    List<InternshipTile> internships = [
      InternshipTile(
        bulletList: BulletList(
          strings: const [
            "Involved working on multiple projects viz LeaderBridge,Muffin,ITG,Pixels,etc",
            "Co-ordinated with the backend team & implemented APIs into the mobile version, handled UI/UX, bugs,animations, etc",
            "Utilized sockets in Muffin for live auction feature,firebase GSignIn,etc",
          ],
        ),
        position: "Flutter Developer",
        org: "VAYUZ",
        dur: "Dec 2020 - Mar 2021",
        certifUrl: 'https://rb.gy/tiudp3',
        playstoreUrl:
            "https://play.google.com/store/apps/details?id=sutechs.leader_bridge",
      ),
      InternshipTile(
        bulletList: BulletList(
          strings: const [
            "Worked on integrating Patym SDK integration in Android",
            "Developed XML designs for various screens",
            "Added Firebase Firestore services & Android Location-based services",
          ],
        ),
        position: "Android Developer",
        org: "Accom Now",
        dur: "Feb 2020 - Apr 2020",
        certifUrl:
            'https://drive.google.com/file/d/1Cu53hKLI1ZRh00MObJ3XYTnlzsO89d_l/view?usp=sharing',
        playstoreUrl:
            "https://play.google.com/store/apps/details?id=com.accomnow.accomnow&amp;hl=es_HN",
      ),
      InternshipTile(
          bulletList: BulletList(
            strings: const [
              "Designed several UI Screens, added Uber-like Google Maps design and functioning",
              "Worked on Firebase Firestore,Guest & Phone Login( OTP handling)",
              "Integrated Stripe Payment via Braintree's GraphQL API for handling payments",
            ],
          ),
          position: "Flutter Developer",
          org: "ServPlatform",
          dur: "Feb 2020 - Apr 2020",
          certifUrl:
              'https://drive.google.com/file/d/11Sosab04kB0gubQR5I9p73lTYg-hUjq9/view?usp=sharing'),
      InternshipTile(
          bulletList: BulletList(
            strings: const [
              "Handled Leaderboard screen with data being fetched from Firebase",
              "Writing Flutter code for unique screens UI such as book shelf UI, etc",
              "Implemented App feedback, ratings, redeem code & share app link mechanism",
            ],
          ),
          position: "Flutter Developer",
          org: "Stringsway Tech",
          dur: "Aug 2019 - Oct 2019",
          certifUrl:
              'https://drive.google.com/file/d/1vbFOdlZG8AyYwPSW-GqCUbtDefQI6Inf/view?usp=sharing'),
      InternshipTile(
          bulletList: BulletList(
            strings: const [
              "Implemented provided APIs in the application for performing CRUD operations",
              "Utilized Android Volley library for handling http requests",
              // "Demo : https://youtu.be/xts6_u7DSkw",
            ],
          ),
          position: "Android Developer",
          org: "Sparks Foundation",
          dur: "May 2019 - Jul 2019",
          certifUrl:
              'https://drive.google.com/file/d/1ZM_YdFpjF1lrd2HoMV8UxFQeHg0LbLtc/view?usp=sharing'),
      InternshipTile(
          bulletList: BulletList(
            strings: const [
              "Integrating response from APIs using GSON.",
              "Designing user-friendly UI, animations, etc.",
              "Fixing bugs and improvising app performance."
            ],
          ),
          position: "Android Developer",
          org: "Commuteck, Mumbai",
          dur: "Oct 2018 - Dec 2018",
          certifUrl:
              'https://drive.google.com/file/d/1mZkNLXP48Qh21AYkdYKA_LECqEZnbANj/view?usp=sharing'),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      color: blackBG,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "INTERNSHIPS",
                      style: TextStyle(
                          fontSize: 3 .sp,
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
              ),
              const SizedBox(
                height: 38.0,
              ),

              Flexible(
                  child: Container(
                width: w,
                child: CarouselSlider.builder(
                  carouselController: internCarouselController,
                  itemCount: internships.length,
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    initialPage: 1,
                    autoPlay: false,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.easeInOut,
                    viewportFraction: 0.3,
                    aspectRatio: 2,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (ctx, index, realIdx) {
                    return internships[index];
                  },
                ),
              )),

              // Flexible(
              //   child: Scrollbar(
              //     controller: scrollController,
              //
              //     isAlwaysShown: true,
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       controller: scrollController,
              //       itemCount: internships.length,
              //       itemBuilder: (context, index) {
              //         return internships[index];
              //       },
              //     ),
              //   ),
              // )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 200.0,
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon:  Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 4.sp,
                    ),
                    onPressed: () {
                      internCarouselController.previousPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                  ),
                   SizedBox(
                    width: 1 .w,
                  ),
                  IconButton(
                    icon:  Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 4.sp,
                    ),
                    onPressed: () {
                      internCarouselController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InternshipTile extends StatelessWidget {
  final String org, dur, position, certifUrl;
  final BulletList bulletList;
  String? playstoreUrl;

  InternshipTile(
      {Key? key,
      required this.org,
      required this.dur,
      required this.position,
      required this.bulletList,
      required this.certifUrl,
      this.playstoreUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: 10.h,
      width: 25 .w,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Positioned(
            top: 26,
            left: 28.0,
            child: Container(
              // height: h * 0.6,
              width: 20 .w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 0.8, color: Colors.white),
                  color: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 11.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: bulletList,
                    // child: Text(
                    //   descrip,
                    //   textAlign: TextAlign.center,
                    //   style: const TextStyle(
                    //       fontSize: 14.0,
                    //       fontWeight: FontWeight.w300,
                    //       color: Colors.grey),
                    // ),
                  ),
                  const SizedBox(
                    height: 28.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Utils().launchURL(certifUrl);
                        },
                        child: Text(
                          "Certificate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 3 .sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.pinkAccent),
                        ),
                      ),
                      (playstoreUrl != null)
                          ? SizedBox(
                              width: 1 .w,
                            )
                          : const Text(""),
                      (playstoreUrl != null)
                          ? InkWell(
                              onTap: () {
                                Utils().launchURL(playstoreUrl!);
                              },
                              child: Text(
                                "PlayStore",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 3.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFE5B4)),
                              ),
                            )
                          : Text("")
                    ],
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              // height: h * 0.22,
              // width: h * 0.35,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/rect.png"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      org,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.4 .sp,
                          shadows: const <Shadow>[
                            // Shadow(
                            //   offset: Offset(0.3, 0.3),
                            //   blurRadius: 3.0,
                            //   color: Colors.white.withOpacity(0.5),
                            // ),
                          ],
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      position,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.5 .sp,
                          shadows: const <Shadow>[
                            // Shadow(
                            //   offset: Offset(0.3, 0.3),
                            //   blurRadius: 2.0,
                            //   color: Colors.white70,
                            // ),
                          ],
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      dur,
                      style: TextStyle(
                          // shadows: const <Shadow>[
                          //   Shadow(
                          //     offset: Offset(0.3, 0.3),
                          //     blurRadius: 2.0,
                          //     color: Colors.white30,
                          //   ),
                          // ],
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 2.5 .sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
