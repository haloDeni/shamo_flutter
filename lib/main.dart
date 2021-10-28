import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/home.dart/main_page.dart';
import 'package:shamo_apps/pages/signin_page.dart';
import 'package:shamo_apps/pages/signup_page.dart';
import 'package:shamo_apps/pages/splash_page.dart';
// import 'package:shamo_apps/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sig-in': (context) => SigInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
