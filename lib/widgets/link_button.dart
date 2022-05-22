import 'package:flutter/material.dart';
import 'package:rohan_portfolio/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';


class LinkButton extends StatelessWidget {
  final String title, url, assetImage;

  const LinkButton(
      {Key? key,
        required this.title,
        required this.url,
        required this.assetImage})
      : super(key: key);

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils().launchURL(url);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(color: Colors.white, width: 0.75)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              (assetImage=="assets/images/web.png")?

              Image.asset(
                assetImage,
                width: 32.0,
                height: 32.0,
              color: Colors.white,
              ):Image.asset(
                assetImage,
                width: 32.0,
                height: 32.0,
              ),
               SizedBox(
                width:1 .w,
              ),
              Text(
                title,
                style:
                 TextStyle(color: Colors.blueAccent, fontSize: 4 .sp,fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}