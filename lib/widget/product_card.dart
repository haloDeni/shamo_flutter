import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class Productcard extends StatelessWidget {
  final String imageUrl;
  final String categories;
  final String nameProduct;
  final String price;

  // ignore: use_key_in_widget_constructors
  Productcard({
    this.imageUrl = 'assets/products/sepatu_runing.png',
    this.categories = 'Hiking',
    this.nameProduct = 'COURT VISION 2.0',
    this.price = '\$58,67',
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffECEDEF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultMargin,
          ),
          Image.asset(
            imageUrl,
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories,
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  nameProduct,
                  style: titleProduct.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  price,
                  style:
                      priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
