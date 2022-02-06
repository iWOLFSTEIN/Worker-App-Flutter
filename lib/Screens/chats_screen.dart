import 'package:flutter/material.dart';
import 'package:worker_app/ResponsiveDesign/dimensions.dart';
import 'package:worker_app/Screens/home_screen.dart';

class ChatsScreen extends StatefulWidget {
  ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 10, top: 6, bottom: 6),
          child: Column(
            children: [
              for (int i = 0; i < 15; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFDAE9E4),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: SellerDescription(
                      sellerName: 'Talha Ashraf',
                      bottomCredential: 'This is a dummy message',
                      profilePic: null,
                      avatarRadius: 22.0,
                      heightBetween: height(context) * 0.7 / 100,
                      nameWeight: FontWeight.w400,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
