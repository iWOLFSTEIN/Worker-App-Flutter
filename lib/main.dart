import 'package:flutter/material.dart';
import 'package:worker_app/Screens/chats_screen.dart';
import 'package:worker_app/Screens/controller_screen.dart';
import 'package:worker_app/Screens/home_screen.dart';
import 'package:worker_app/Screens/seller_gig_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ControllerScreen()
        // SellerGigScreen(),
        // ChatsScreen(),
        );
  }
}
