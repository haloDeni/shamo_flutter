import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class CartCheckOutWidget extends StatelessWidget {
  const CartCheckOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/products/image_31.png'),
                  ),
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
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Text(
                '2 Items',
                style: subtittleText,
              )
            ],
          ),
        ],
      ),
    );
  }
}
