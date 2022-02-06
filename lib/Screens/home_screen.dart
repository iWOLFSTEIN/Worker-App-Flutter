import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:worker_app/ResponsiveDesign/dimensions.dart';
import 'package:worker_app/ResponsiveDesign/responsive_widget.dart';

class HomeScreen extends StatefulWidget {
  // ignore_for_file: prefer_const_constructors
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showBar = true;
  ScrollController scrollController = ScrollController();
  // ignore: non_constant_identifier_names
  var services_links = [
    'https://d1ac9zce9817ms.cloudfront.net/images/16-1576222606458.%20Immigrate%20to%20Canada%20as%20an%20Electrician1',
    'https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2021/07/how_much_does_a_plumber_cost_women.jpg',
    'https://thrivesjournal.com/wp-content/uploads/2021/06/Ask-A-Mechanic-1200x900-1.jpeg',
    'https://thearchitectsdiary.com/wp-content/uploads/2019/06/professional-house-painter.jpg',
    'https://media.istockphoto.com/photos/smiling-african-american-cleaner-holding-vacuum-cleaner-brush-near-picture-id1222545484?k=20&m=1222545484&s=612x612&w=0&h=n0_UB-vwvFyJAOIy2CGxuFmrzOcwz2ed0TuITy4cmZM=',
    'https://www.familyhandyman.com/wp-content/uploads/2020/03/4e43e850-61u5vx9jfvl._ac_sl1000_.jpg',
    'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F975125060%2F0x0.jpg',
    'https://www.ibizavilla.com/wp-content/uploads/2019/11/AdobeStock_264357226_.jpeg',
    'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2016/10/shutterstock_215156347-1-850x476.jpg?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-2',
    'https://images.theconversation.com/files/66794/original/image-20141209-32156-7fef5i.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            NotificationListener<ScrollUpdateNotification>(
              onNotification: (notification) {
                if (scrollController.position.userScrollDirection ==
                    ScrollDirection.forward) {
                  setState(() {
                    showBar = true;
                  });
                } else {
                  setState(() {
                    showBar = false;
                  });
                }

                return true;
              },
              child: SingleChildScrollView(
                controller: scrollController,
                child: ResponsiveWidget(
                  portrait: Column(
                    children: [
                      for (int i = 0; i < 10; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Container(
                            height: height(context) / 1.8,
                            width: width(context),
                            child: Column(
                              children: [
                                Container(
                                  height: height(context) / 2.15,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF4CAF50 + 30),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        child: Image.network(
                                          services_links[i],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: height(context) / 2.15,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                              Colors.black.withOpacity(0.0),
                                              Colors.black.withOpacity(0.1),
                                              Colors.black.withOpacity(0.9),
                                            ])),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: height(context) *
                                                        1.5 /
                                                        100,
                                                    right: width(context) *
                                                        3 /
                                                        100),
                                                child: Container(
                                                    // padding: EdgeInsets.all(0),
                                                    decoration: BoxDecoration(
                                                      //   color: Colors.black
                                                      //       .withOpacity(0.4),
                                                      //  color: Colors.white,
                                                      borderRadius:
                                                          // BorderRadius.all(
                                                          //     Radius.circular(
                                                          //         20))
                                                          BorderRadius.circular(
                                                              50),
                                                    ),
                                                    child:
                                                        //  Text(
                                                        //   '!',
                                                        //   style: TextStyle(
                                                        //       color: Colors.white,
                                                        //       fontWeight:
                                                        //           FontWeight.w600),
                                                        // ),
                                                        Icon(
                                                      Icons.info,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      width(context) * 3 / 100,
                                                  right:
                                                      width(context) * 3 / 100,
                                                  bottom: height(context) *
                                                      2 /
                                                      100),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  Text(
                                                    'House Electrician',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 27,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: height(context) *
                                                        0.5 /
                                                        100,
                                                  ),
                                                  // Row(
                                                  //   // ignore: prefer_const_literals_to_create_immutables
                                                  //   children: [
                                                  Text(
                                                    'Electrician',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 18),
                                                  ),
                                                  //     Expanded(child: SizedBox()),
                                                  //     Text(
                                                  //       '2 km away',
                                                  //       style: TextStyle(
                                                  //           color: Colors.grey,
                                                  //           fontSize: 14),
                                                  //     ),
                                                  //   ],
                                                  // )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // ignore: sized_box_for_whitespace
                                Container(
                                  // height: double.infinity,
                                  height: (height(context) / 1.8) -
                                      (height(context) / 2.15),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: width(context) * 4 / 100),
                                    child: SellerDescription(
                                      sellerName: 'Talha Ashraf',
                                      bottomCredential: '2 km away',
                                      profilePic: null,
                                      avatarRadius: 20.0,
                                      heightBetween:
                                          height(context) * 0.25 / 100,
                                      nameWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFD1E3DD).withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        )
                    ],
                  ),
                  landscape: Column(
                    children: [
                      for (int i = 0; i < 10; i++)
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: Container(
                                  height: height(context) / 1.25,
                                  color: Color(0xFF4CAF50 + i * 15),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height(context) / 1.25,
                                  color: Color(0xFF4CAF50 + i * 15),
                                ),
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              height: (showBar) ? 60 : 0,
              child: Material(
                elevation: 16,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: width(context) * 4 / 100,
                    ),
                    Image.asset(
                      'images/menu.png',
                      // height: height(context) * 3.5 / 100,
                      // width: width(context) * 7 / 100,
                      height: 27.5,
                      // width: 56,
                    ),
                    Expanded(child: SizedBox()),
                    Image.asset(
                      'images/search.png',
                      // height: height(context) * 3.5 / 100,
                      // width: width(context) * 7 / 100,
                      height: 27.5,
                    ),
                    SizedBox(
                      width: width(context) * 4 / 100,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SellerDescription extends StatelessWidget {
  SellerDescription({
    Key? key,
    this.bottomCredential,
    this.profilePic,
    this.sellerName,
    this.avatarRadius,
    this.heightBetween,
    this.nameWeight,
  }) : super(key: key);

  var sellerName;
  var bottomCredential;
  var profilePic;
  var avatarRadius;
  var heightBetween;
  var nameWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: avatarRadius,
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: width(context) * 2.5 / 100,
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  sellerName,
                  style: TextStyle(fontSize: 17, fontWeight: nameWeight),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height(context) * 0.3 / 100,
                      left: width(context) * 1 / 100),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 4,
                  ),
                )
              ],
            ),
            SizedBox(
              height: heightBetween,
            ),
            Text(
              // 'Last online: 3 min ago',
              bottomCredential,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
