import 'package:flutter/material.dart';
import 'package:worker_app/ResponsiveDesign/dimensions.dart';
import 'package:worker_app/Screens/home_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
          padding: const EdgeInsets.only(right: 0, left: 0, top: 4, bottom: 4),
          child: Column(
            children: [
              for (int i = 0; i < 5; i++)
                Slidable(
                  key: GlobalKey(),
                  endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor:
                              //Colors.blue,
                              Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.block,
                          label: 'Block',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Container(
                          // width: width(context),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 20),
                          decoration: BoxDecoration(
                              // color: Color(0xFFDAE9E4),
                              // borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                          child: Row(
                            children: [
                              SellerDescription(
                                sellerName: 'Talha Ashraf',
                                bottomCredential: 'This is a dummy message',
                                profilePic: null,
                                avatarRadius: 23.0,
                                heightBetween: height(context) * 0.9 / 100,
                                nameWeight: FontWeight.w400,
                                newMessageTime: Text(
                                  '09:12 AM',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.4)),
                                ),
                                newMessageIndicator: CircleAvatar(
                                  backgroundColor: Colors.green.shade400,
                                  radius: 8,
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                nameFontSize: 17.5,
                                credentialFontSize: 15.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 0,
                        thickness: 1,
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
