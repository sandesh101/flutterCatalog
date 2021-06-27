import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login-page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.lobster().fontFamily),
      initialRoute: MyRoutes.homePage,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.loginPage: (context) => LoginPage(),
      },
    );
  }
}
