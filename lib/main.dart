import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohan_portfolio/screens/home_page.dart';
import 'package:rohan_portfolio/screens/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // textTheme: GoogleFonts.poppinsTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          fontFamily: "Nexa",
          //color for scrollbar
          // highlightColor: Color(0xffffc600),
          scrollbarTheme: ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.2)),
            trackColor: MaterialStateProperty.all(Colors.black),

            thickness: MaterialStateProperty.all(7.2)
          )),
      home: ResponsiveLayout(
        mobileBody: Container(
          color: Colors.red,
        ),
        desktopBody: const HomePage(),
        tabletBody: const HomePage(),
      ),
    );
  }
}
