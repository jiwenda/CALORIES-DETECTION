import 'package:flutter/material.dart';

//color class
class Tcolor {
  static Color get primary1 => Color(0xff92A3FD);
  static Color get primary2 => Color(0Xff9DCEFF);
  static List<Color> get primaryG => [primary1, primary2];

  static Color get secondary1 => Color(0XffC58BF2);
  static Color get secondary2 => Color(0XffEEA4CE);
  static List<Color> get secondaryG => [secondary1, secondary2];

  static Color get white => Colors.white;
  static Color get grey => Colors.grey;
  static Color get black => Colors.black;
}

//text class
class Ttext {
  static TextStyle get heading1 =>
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Tcolor.black);
  static TextStyle get heading2 => TextStyle(fontSize: 14, color: Tcolor.grey);
}

//style class
class Tstyle {
  static BoxDecoration buttonDecoration = BoxDecoration(
      color: Tcolor.primary1, borderRadius: BorderRadius.circular(35));
}
