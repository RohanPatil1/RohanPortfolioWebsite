import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/home4.m4v');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // mutes the video
      _controller.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _controller.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Future<void> initializePlayer() async {
  //
  //   // videoPlayerController = VideoPlayerController.asset("assets/home.m4v");
  //   // videoPlayerController.play();
  //   // await Future.wait([videoPlayerController.initialize()]).then((value) {
  //   //   print("VIDEO INITIALIZED");
  //   //   setState(() {
  //   //
  //   //
  //   //     videoPlayerController.setLooping(true);
  //   //   });
  //   // });
  //
  // }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Column(
          children: [

            Expanded(

              child: VideoPlayer(_controller),
            ),
          ],
        ),
      ],
    );
    // return Stack(
    //   children: [
    //     Container(
    //       height:h,
    //       width: w,
    //       child: VideoPlayer(_controller),
    //     )
    //
    //     // videoPlayerController.value.isInitialized
    //     //     ? Container(
    //     //         height: h,
    //     //         width: w,
    //     //         child: VideoPlayer(videoPlayerController),
    //     //       )
    //     //     : Center(
    //     //         child: CircularProgressIndicator(),
    //     //       ),
    //
    //     // Positioned(
    //     //   top: 0,
    //     //   left: -400,
    //     //   child: Image.asset(
    //     //     "assets/images/cherrytree.png",
    //     //     width: w*0.8,
    //     //     height: h,
    //     //     fit: BoxFit.cover,
    //     //   ),
    //     // ),
    //     // Center(
    //     //   child: Column(
    //     //     children: const [
    //     //       Text(
    //     //         "ROHAN PATIL",
    //     //         style: TextStyle(fontSize: 44.0, color: Color(0xff181818)),
    //     //       ),
    //     //       Text(
    //     //         "ROHAN PATIL",
    //     //         style: TextStyle(fontSize: 44.0, color: Color(0xff181818),
    //     //       ),
    //     //       )
    //     //     ],
    //     //   ),
    //     // ),
    //   ],
    // );
  }
}
