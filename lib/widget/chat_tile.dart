import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String merchant;
  final String massage;
  final String time;
  final bool unread;

  // ignore: use_key_in_widget_constructors
  ChatTile({
    this.imageUrl = 'assets/logoProducts/nike.png',
    this.merchant = 'Nike Official',
    this.massage =
        'Hai thankyou for your massage, your order already to packing',
    this.time = 'Now',
    this.unread = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 33),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: Colors.white,
                  width: 54,
                  height: 54,
                  child: Image.asset(
                    imageUrl,
                    width: 54,
                    height: 54,
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
                      merchant,
                      style: primaryTextStyle.copyWith(
                          fontSize: 15, fontWeight: reguler),
                    ),
                    Text(
                      massage,
                      style: secondaryTextStyle.copyWith(fontWeight: light),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Text(
                time,
                style: secondaryTextStyle.copyWith(
                    fontWeight: reguler,
                    fontSize: 10,
                    color: unread ? Color(0xffFFFFFF) : Color(0xff999999)),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2B2939),
          )
        ],
      ),
    );
  }
}
