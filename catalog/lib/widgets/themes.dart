import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.aBeeZee().fontFamily,
      primaryTextTheme: GoogleFonts.patuaOneTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.black,
      canvasColor: Colors.cyanAccent,
      buttonColor: LightPurple,
      fontFamily: GoogleFonts.aBeeZee().fontFamily,
      primaryTextTheme: GoogleFonts.patuaOneTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static Color color1 = Color(0xff143261);
  static Color DarkColor = Vx.gray900;
  static Color color2 = Color(0xff5688d6);
  static Color LightPurple = Vx.purple300;
}
