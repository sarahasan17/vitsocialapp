import 'package:flutter/material.dart';

class ThemeHelper {
  Color backgroundColor = const Color(0xFF304886);
  Color selectedColor = const Color(0xFF30709C);
  Color unselectedColor = const Color(0xFF000000);
  Color uploadquestioncolor = const Color(0xFFEEEEEE);
  Color bottomnavColor = const Color(0xFFE5E4E4);
  Color textcolor = const Color(0xFF959595);
  Color skillcolor = const Color(0xFFD9D9D9);
  Color postbuttoncolor = const Color(0xFFB1C4F6);
  Color paperplanecolor = const Color(0xFF4A45A3);
  Color timeColor = const Color(0xFFADADAD);
  Color white = Colors.white;
  final TextStyle font1 = const TextStyle(
      fontFamily: 'Roboto', fontSize: 40, fontWeight: FontWeight.w600);
  final TextStyle font2 = const TextStyle(
      fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w600);
  final TextStyle font3_Inter = const TextStyle(
      fontFamily: 'Inter Regular', fontSize: 13, fontWeight: FontWeight.w400);
  final TextStyle font4_sans = const TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 15,
      fontWeight: FontWeight.w200,
      color: Colors.white);
  Gradient backgroundColor2 = const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xFF322473),
        Color(0xFF2F90AD),
      ]);
}
