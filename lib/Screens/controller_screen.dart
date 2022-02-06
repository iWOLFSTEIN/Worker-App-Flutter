import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:worker_app/ResponsiveDesign/dimensions.dart';
import 'package:worker_app/Screens/chats_screen.dart';
import 'package:worker_app/Screens/home_screen.dart';

// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_constructors_in_immutables

class ControllerScreen extends StatefulWidget {
  ControllerScreen({Key? key}) : super(key: key);

  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  final PageController controller = PageController(initialPage: 0);
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        children: [HomeScreen(), ChatsScreen()],
      ),
      bottomNavigationBar: CustomNavigationBar(
          elevation: 16,
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
              controller.animateToPage(pageIndex,
                  duration: Duration(milliseconds: 800),
                  curve: Curves.linearToEaseOut);
            });
          },
          iconSize: 29,
          items: [
            CustomNavigationBarItem(
              icon: Image.asset('images/home.png'),
              //   const Icon(
              // Icons.home_rounded,
              // )
            ),
            CustomNavigationBarItem(
                icon: Container(
              padding: EdgeInsets.only(top: 1.5, left: 1.5, right: 1.5),
              child: Image.asset(
                'images/chat.png',
                // height: height(context) * 3.75 / 100,
                // width: width(context) * 7 / 100,
                height: 27,
                width: 54,
              ),
              //  const Icon(
              //   Icons.chat_bubble_rounded,
              //   size: 24.5,
              // ),
            ))
          ]),
    );
  }
}
