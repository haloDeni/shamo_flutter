import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class ChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBuble({
    this.text = '',
    this.isSender = false,
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productPriview() {
      return Container(
        width: 235,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: isSender ? bgColor5 : bgColor4),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/products/image_59.png', width: 70),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle,
                      ),
                      Text('\$ 99.00',
                          style: priceTextStyle.copyWith(
                              fontWeight: medium, letterSpacing: 1.0))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: primaryColor,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    'Add to Cccart',
                    style: primaryTextStyle.copyWith(color: primaryColor),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Buy Now',
                      style: purpleText.copyWith(color: Color(0xff2B2844)),
                    ))
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPriview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(isSender ? 0 : 12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: isSender ? bgColor5 : bgColor4),
                  child: Text(
                    text,
                    style: primaryTextStyle,
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
