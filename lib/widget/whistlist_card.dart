import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class WhistlistCard extends StatelessWidget {
  final String imageUrl;
  final String nameProduct;
  final String priceProduct;

  WhistlistCard(
      {this.imageUrl = 'assets/products/image_59.png',
      this.nameProduct = 'Predator 20.3 Firm Ground Boots',
      this.priceProduct = '\$143,98'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              width: 60,
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
                  nameProduct,
                  style: primaryTextStyle.copyWith(fontWeight: medium),
                ),
                Text(
                  priceProduct,
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/Love.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
