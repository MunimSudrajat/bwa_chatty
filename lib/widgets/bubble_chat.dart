import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class BubbleChat extends StatelessWidget {
  final String text;
  final String time;
  final String imageUrl;

  BubbleChat({
    this.text = "Hello Word",
    this.time = "23:59",
    this.imageUrl = 'assets/images/friend1.png',
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(imageUrl, width: 40),
          SizedBox(width: 12),
          Container(
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(color: darkGrey, fontSize: 16)),
                SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(
                    color: darkGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xffEBEFF3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
