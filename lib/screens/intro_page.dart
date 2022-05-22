import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>  {
  late VideoPlayerController _controller;
  late Future videoFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/home4.m4v');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);

    videoFuture = _controller.initialize().then((_) => setState(() {}));
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // mutes the video
      _controller.setVolume(0);
      _controller.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: videoFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
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
        } else {
         return Align(
           alignment:Alignment.topCenter,
           child: LinearProgressIndicator(color: Colors.pink,),
         );
         //  return Center(
         //    child: Lottie.asset(
         //      'assets/anim/loading.json',
         //      repeat: true,
         //      reverse: false,
         //      width: w - 300,
         //      height: h - 300,
         //      fit: BoxFit.contain,
         //    ),
         //  );
        }
      },
    );
  }
}
