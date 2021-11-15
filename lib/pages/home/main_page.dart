import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/home/cart_page.dart';
import 'package:shamo_apps/pages/home/chat_page.dart';
import 'package:shamo_apps/pages/home/home_page.dart';
import 'package:shamo_apps/pages/home/profile_page.dart';
import 'package:shamo_apps/pages/home/whistlist_page.dart';
import 'package:shamo_apps/theme.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Widget costumNavigation() {
      final inactiveColor = Colors.grey;
      return BottomNavyBar(
        backgroundColor: bgColor4,
        itemCornerRadius: 50,
        containerHeight: 60,
        selectedIndex: index,
        onItemSelected: (index) => setState(() => this.index = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            textAlign: TextAlign.center,
            inactiveColor: inactiveColor,
            activeColor: Color(0xff6C5ECF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
            textAlign: TextAlign.center,
            inactiveColor: inactiveColor,
            activeColor: Color(0xff6C5ECF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded),
            title: Text('Cart'),
            textAlign: TextAlign.center,
            inactiveColor: inactiveColor,
            activeColor: Color(0xff6C5ECF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Whistlist'),
            textAlign: TextAlign.center,
            inactiveColor: inactiveColor,
            activeColor: Color(0xff6C5ECF),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            textAlign: TextAlign.center,
            inactiveColor: inactiveColor,
            activeColor: Color(0xff6C5ECF),
          ),
        ],
      );
    }

    Widget content() {
      switch (index) {
        case 1:
          return Chatpage();
        case 2:
          return CartPage();
        case 3:
          return WhislistPage();
        case 4:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      body: content(),
      bottomNavigationBar: costumNavigation(),
    );
  }
}
