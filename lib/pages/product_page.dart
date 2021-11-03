import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shamo_apps/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: secondaryColor,
                    ),
                  ),
                  Icon(
                    Icons.shopping_bag,
                    color: bgColor1,
                  )
                ],
              ),
            ),
            CarouselSlider(items: items, options: options)
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: bgColor6,
        body: ListView(
          children: [header()],
        ));
  }
}
