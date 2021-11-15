import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/detail_chat.dart';
import 'package:shamo_apps/pages/detail_checkout.dart';
import 'package:shamo_apps/pages/edit_profile.dart';
import 'package:shamo_apps/pages/home/cart_page.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/product_page.dart';
import 'package:shamo_apps/pages/signin_page.dart';
import 'package:shamo_apps/pages/signup_page.dart';
import 'package:shamo_apps/pages/splash_page.dart';
import 'package:shamo_apps/pages/success_checkout.dart';
import 'package:provider/provider.dart';
import 'package:shamo_apps/providers/auth_providers.dart';
// import 'package:shamo_apps/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sig-in': (context) => SigInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/cart-page': (context) => CartPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfil(),
          '/detail-product': (context) => ProductPage(),
          '/detail-checkout': (context) => DetailCheckout(),
          '/detail-Success-checkout': (context) => SuccessCheckOut(),
        },
      ),
    );
  }
}
