import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class Productcard extends StatelessWidget {
  const Productcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: defaultMargin,
          ),
          Image.asset('assets/images/sepatu_runing.png'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text('Hiking'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
