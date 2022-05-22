import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_portfolio/constants.dart';
import 'package:rohan_portfolio/screens/contact_page.dart';
import 'package:rohan_portfolio/screens/home_page.dart';
import 'package:rohan_portfolio/screens/responsive_layout.dart';
import 'package:rohan_portfolio/screens/wip_mobile.dart';
import 'package:rohan_portfolio/screens/wip_tab_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              fontFamily: "Nexa",
              scrollbarTheme: ScrollbarThemeData().copyWith(
                  thumbColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(0.2)),
                  trackColor: MaterialStateProperty.all(Colors.black),
                  thickness: MaterialStateProperty.all(7.2))),
          home: ResponsiveLayout(
            mobileBody: const WIP_Mobile(),
            desktopBody: const HomePage(),
            // desktopBody: Material(color: blackBG,child: const ContactPage()),
            tabletBody: const WIP_Tab(),
          ),
        );

      },
    );
  }
}
