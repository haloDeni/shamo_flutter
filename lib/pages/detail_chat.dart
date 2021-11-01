import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/appbar.dart';
import 'package:shamo_apps/widget/chat_buble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);
  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: primaryColor,
        ),
        color: bgColor5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/products/image_23.png',
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COURT VISIO...',
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$57,15',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/close.png',
            width: 22,
          )
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                      color: bgColor1, borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Typle Message...',
                        hintStyle: subtittleText.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/send_button.png',
                width: 45,
                height: 45,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        ChatBuble(
          text: 'Hi, This item is still available?',
          isSender: true,
        ),
        ChatBuble(
          text: 'Hai thankyou for your massage, your order already',
          isSender: false,
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: costumeAppbar(),
      body: content(),
      bottomNavigationBar: chatInput(),
      // bottomNavigationBar: chatInput(),
    );
  }
}
