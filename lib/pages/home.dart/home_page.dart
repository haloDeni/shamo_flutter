import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/product_card.dart';
import 'package:shamo_apps/widget/product_tile.dart';
// import 'package:shamo_apps/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, right: defaultMargin, left: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Deni Nuryadi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: Color(0xffF1F0F2),
                    ),
                  ),
                  Text(
                    '@hello_deninuryadi',
                    style: subtittleText.copyWith(
                        fontSize: 16, fontWeight: reguler),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.png'))),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                      color: Colors.white, fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtittleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Running',
                  style: subtittleText.copyWith(
                      color: Colors.white, fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtittleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Training',
                  style: subtittleText.copyWith(
                      color: Colors.white, fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtittleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Basket Ball',
                  style: subtittleText.copyWith(
                      color: Colors.white, fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtittleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Hiking',
                  style: subtittleText.copyWith(
                      color: Colors.white, fontSize: 13, fontWeight: medium),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail-product');
                      },
                      child: Productcard()),
                  Productcard(
                    imageUrl: 'assets/products/image_59.png',
                    nameProduct: 'Duramo 2.1',
                    categories: 'Training',
                    // imageUrl: 'assets/images/sepatu_running_3.png',
                    price: '\$30.00',
                  ),
                  Productcard(
                    imageUrl: 'assets/products/sepatu_running_3.png',
                    nameProduct: 'Active 99',
                    categories: 'Training',
                    price: '\$50.00',
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(
              imageUrl: 'assets/products/image_51.png',
              nameProducts: 'Pro Boost Low Shoes',
              categories: 'Basketball',
              price: '\$99.00',
            ),
            ProductTile(
              imageUrl: 'assets/products/image_23.png',
              categories: 'Runing',
              nameProducts: 'Go Arround',
              price: '\$89.00',
            ),
          ],
        ),
      );
    }

    return ListView(
      addAutomaticKeepAlives: false,
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}
