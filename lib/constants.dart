import 'package:flutter/material.dart';
const kTabletBreakpoint = 768.0;
const kDesktopBreakPoint = 1440.0;

const kSideMenuWidth = 300.0;
const kNavigationRailWidth = 72.0;

const kMaxWidth = 1180.0;
const Color blackBG = Color(0xff080808);
const Color matteBlack = Color(0xff181818);
const Color red = Color(0xfff8002f);

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var f = 1 - percent / 100;
  return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
      (c.blue * f).round());
}

/// Lighten a color by [percent] amount (100 = white)
// ........................................................
Color lighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round());
}
