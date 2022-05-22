import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blobs/blobs.dart';
import 'package:rohan_portfolio/screens/certif_page.dart';
import 'package:rohan_portfolio/screens/project_screens/anime_insta_page.dart';
import 'package:rohan_portfolio/screens/project_screens/assignments_page.dart';
import 'package:rohan_portfolio/screens/project_screens/chill_tunes.dart';
import 'package:rohan_portfolio/screens/project_screens/doodle_website_page.dart';
import 'package:rohan_portfolio/screens/project_screens/inshorts_page.dart';
import 'package:rohan_portfolio/screens/project_screens/waymaps.dart';
import 'dart:math' as math;
import '../constants.dart';
import 'contact_page.dart';
import 'internships_page.dart';
import 'intro_page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ScrollController mainScrollCtrl = ScrollController();
  PageController pageController = PageController();
  double currentPageValue = 0.0;
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    // _controller.addListener(() {
    //   setState(() {
    //     if (_controller.status == AnimationStatus.completed) {
    //       _controller.reverse();
    //     }else{
    //       _controller.forward();
    //
    //     }
    //   });
    // });
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    mainScrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: blackBG,
      body: ListView(
        shrinkWrap: true,
        controller: mainScrollCtrl,
        children: [
          Stack(
            children: [
              Container(
                width: 100 .w,
                height: MediaQuery.of(context).size.height + 20,
                child: const IntroPage(),
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Image.asset(
              //       "assets/images/india.png",
              //       // width: h*0.1,
              //       height: h*0.1,
              //
              //     ),
              //   ),
              // )
            ],
          ),

          const SizedBox(
            height: 100.0,
          ),

          //PROJECTS PAGE
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 100,
                color: blackBG,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: -50,
                      left: -240,
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (_, child) {
                          return Transform.rotate(
                            angle: _controller.value * 0.7 * math.pi,
                            child: child,
                          );
                        },
                        child: Blob.fromID(
                          id: const ['14-7-17354'],
                          size: 55 .w,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   bottom: -50,
                    //   right: 0,
                    //   child: Image.asset(
                    //     "assets/images/tree.png",
                    //     scale: 4.5,
                    //   ),
                    // ),
                    Column(
                      children: [
                        Expanded(
                          child: PageView(
                            pageSnapping: true,
                            onPageChanged: (page) {
                              if (_controller.status ==
                                  AnimationStatus.completed) {
                                _controller.reverse();
                              } else {
                                _controller.forward();
                              }
                            },
                            controller: pageController,
                            children: const [
                              ChillTunesPage(),
                              DoodlePage(),
                              WayMapsPage(),
                              AssignmentPage(),
                              AnimeInstaPage(),
                              InshortsPage(),
                            ],
                          ),
                        ),
                        //Prev Next
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "PROJECTS",
                                  style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1.h,
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
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 15.w,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                          size: 4.sp,
                        ),
                        onPressed: () {
                          pageController.previousPage(
                              duration: _kDuration, curve: _kCurve);
                        },
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 4.sp,
                        ),
                        onPressed: () {
                          pageController.nextPage(
                              duration: _kDuration, curve: _kCurve);
                        },
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 1.8.h,
                  right: -4.5.w,
                  child: Transform.rotate(
                    angle: 270.0,
                    child: Image.asset(
                      "assets/images/tree.png",
                      width: 39.w,
                      height: 51.h,
                    ),
                  ))
            ],
          ),

          //INTERNSHIPS PAGE
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: const InternshipPage(),
          ),

          const SizedBox(
            height: 80.0,
          ),

          //CERTIFICATION PAGE
          Stack(
            children: [
              Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    "assets/images/lines.png",
                    fit: BoxFit.cover,
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 100,
                child: const CertificatePage(),
              ),
            ],
          ),

          //CONTACT PAGE
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const ContactPage(),
          ),
        ],
      ),
    );
  }
}
