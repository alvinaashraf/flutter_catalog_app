import 'package:catalog/pages/homepage.dart';
import 'package:catalog/pages/login_page.dart';
import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.robotoSlab().fontFamily,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Home(),
        MyRoutes.HomeRoute: (context) => Home(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
