import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/widgets/bubble_chat.dart';

class RoomChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              height: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/group1.png', width: 55),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Jakarta Fair", style: titleTextStyle),
                      Text("14,209 members", style: subTitleOff),
                    ],
                  ),
                  Spacer(),
                  // Image.asset('assets/images/call_btn.png'),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.call, color: whiteColor),
                    shape: CircleBorder(),
                    backgroundColor: greenColor,
                    mini: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BubbleChat(
                    imageUrl: 'assets/images/friend1.png',
                    text: "How are you guys?",
                    time: "2:30",
                  ),
                  BubbleChat(
                    imageUrl: 'assets/images/friend3.png',
                    text: "Find here :P",
                    time: "3:11",
                  ),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thinking about how to deal \nwith this client from hell...",
                              style: TextStyle(color: darkGrey, fontSize: 16),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "22:08",
                              style: TextStyle(
                                color: darkGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Image.asset("assets/images/friend4.png", width: 40),
                    ],
                  ),
                  BubbleChat(
                    imageUrl: 'assets/images/friend2.png',
                    text: "Love them",
                    time: "23:11",
                  ),
                  SizedBox(height: 181),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(50),
                        right: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Type message ...",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff999999),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/arrow_btn.png',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
