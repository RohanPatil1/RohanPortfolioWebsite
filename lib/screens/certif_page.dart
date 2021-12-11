import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({Key? key}) : super(key: key);

  @override
  _CertificatePageState createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  CarouselController carouselController = CarouselController();

  final imgList = [
    "assets/images/certif1.jpg",
    "assets/images/certif2.jpg",
    "assets/images/certif3.jpg",
    "assets/images/certif4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "CERTIFICATIONS",
                    style: TextStyle(
                        fontSize: 16.0,
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
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                  enableInfiniteScroll: true,
                  reverse: false,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.38,
                  height: 500),
              items: [
                for (var img in imgList)
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        img,
                        fit: BoxFit.contain,
                      ))
              ],
            ),

            //
            // Flexible(
            //   child: Container(
            //     child: Image.asset("assets/images/test1.png",width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
            //   ),
            // ),
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
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                  onPressed: () {
                    carouselController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                ),
                const SizedBox(
                  width: 8.0,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                  onPressed: () {
                    carouselController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
