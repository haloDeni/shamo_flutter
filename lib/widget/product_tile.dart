import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class ProductTile extends StatelessWidget {
  final String imageUrl;
  final String categories;
  final String nameProducts;
  final String price;

  // ignore: use_key_in_widget_constructors
  ProductTile(
      {this.imageUrl = 'assets/products/sepatu_running_2.png',
      this.categories = 'Running',
      this.nameProducts = 'SL 20 Shoes',
      this.price = '\$ 30.00'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories,
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                nameProducts,
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                price,
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
