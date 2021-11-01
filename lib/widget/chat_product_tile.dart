import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class ChatProductReady extends StatelessWidget {
  final String imageUrl;
  final String nameProducts;
  final String priceProduct;

  ChatProductReady({
    this.imageUrl = 'assets/products/image_38.png',
    this.nameProducts = 'Spartan New 2.0',
    this.priceProduct = '\%50.00',
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.6,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: bgColor5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  width: 70,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameProducts,
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    priceProduct,
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(
                      color: primaryColor,
                    )),
                child: Text(
                  'Add to Cart',
                  style: primaryTextStyle.copyWith(
                      color: primaryColor, fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'Buy Now',
                  style: primaryTextStyle.copyWith(
                    color: bgColor5,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
