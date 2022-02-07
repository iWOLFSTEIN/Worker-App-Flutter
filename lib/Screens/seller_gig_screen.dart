// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:worker_app/ResponsiveDesign/dimensions.dart';
import 'package:worker_app/Screens/home_screen.dart';

class SellerGigScreen extends StatefulWidget {
  SellerGigScreen({Key? key}) : super(key: key);

  @override
  State<SellerGigScreen> createState() => _SellerGigScreenState();
}

class _SellerGigScreenState extends State<SellerGigScreen> {
  var images = [
    'https://www.ziprecruiter.com/svc/fotomat/public-ziprecruiter/uploads/job_description_template/Plumber.jpg',
    'https://insights.workwave.com/wp-content/uploads/2020/06/plumber-fixing-white-sink-pipe-with-adjustable-wrench-picture-id1150199946.jpg',
    'https://media.angi.com/s3fs-public/Plumber-fixing-pipes.jpg',
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  bool isFavorated = false;
  bool startAnimation = false;
  int index = 1;

  var iconArray = [
    Icon(
      Icons.favorite,
      color: Colors.red,
    ),
    Icon(
      Icons.favorite_border,
      color: Colors.white.withOpacity(0.6),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seller Gig',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      // backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height(context) * 0 / 100),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: false,
                        height: height(context) * 30 / 100,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: width(context),
                              margin: EdgeInsets.symmetric(horizontal: 0),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10))
                              ),
                              child: ClipRRect(
                                // borderRadius:
                                //     BorderRadius.all(Radius.circular(10)),
                                child: Image.network(
                                  i,
                                  fit: BoxFit.cover,
                                  //  height: height,
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 9.0,
                          height: 9.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 9.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.white)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(context) * .2 / 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                color: Color(0xFFDAE9E4),
                height: height(context) * 7.5 / 100,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: height(context) * 7.5 / 100,
                      decoration: BoxDecoration(
                          // color: Color(0xDAE9E4),
                          border: Border.all(color: Colors.white)),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.call,
                            color: Colors.green,
                          )),
                    )),
                    Expanded(
                        child: Container(
                      height: height(context) * 7.5 / 100,
                      decoration: BoxDecoration(
                          // color: Color(0xDAE9E4),
                          border: Border.all(color: Colors.white, width: 0.5)),
                      child: TextButton(
                          onPressed: () {}, child: Icon(Icons.chat_bubble)),
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: height(context) * 15 / 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Rated: ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          for (int i = 0; i < 5; i++)
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          Expanded(child: Container()),
                          InkWell(
                            splashColor: Colors.red,
                            onTap: () {
                              setState(() {
                                startAnimation = true;
                              });
                              Future.delayed(Duration(milliseconds: 100), () {
                                setState(() {
                                  isFavorated = !isFavorated;
                                  startAnimation = false;
                                });
                              });
                            },
                            child: AnimatedScale(
                              scale: (startAnimation) ? 1.7 : 1,
                              duration: Duration(milliseconds: 100),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: (startAnimation)
                                        ? Colors.red.withOpacity(0.1)
                                        : null,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Icon(
                                  (isFavorated)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: (isFavorated)
                                      ? Colors.red
                                      : (startAnimation)
                                          ? Colors.red
                                          : Colors.white.withOpacity(0.6),
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height(context) * 0.8 / 100,
                      ),
                      Text(
                        '5 out of 5 stars',
                        style: TextStyle(color: Colors.white.withOpacity(0.6)),
                      ),
                      SizedBox(
                        height: height(context) * 1.7 / 100,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2),
                        child: Text(
                          '5 km away from you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            // fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            text_heading_description(context,
                heading: 'House Plumber',
                description: 'category: ' + 'plumber',
                heightBetween: height(context) * 1.25 / 100),
            SizedBox(
              height: 10,
            ),
            text_heading_description(context,
                heading: 'Description',
                description:
                    'Hello there \ni am the plumber \ni do plumbing like taps and basins.\nI also fix washroom leaks.',
                heightBetween: height(context) * 1.5 / 100),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                // color: Color(0xFFDAE9E4),
                width: width(context),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color(0xFFDAE9E4),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Seller Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height(context) * 2 / 100,
                    ),
                    Column(
                      children: [
                        SellerDescription(
                          sellerName: 'Talha Ashraf',
                          bottomCredential: 'Member since March 2021',
                          profilePic: null,
                          avatarRadius: 20.0,
                          heightBetween: height(context) * 0.5 / 100,
                          nameWeight: FontWeight.w400,
                          nameFontSize: 17,
                          credentialFontSize: 14,
                        ),
                        SizedBox(
                          height: height(context) * 2.5 / 100,
                        ),
                        Container(
                          height: height(context) * 5.5 / 100,
                          width: width(context),
                          color: Colors.blue,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Open Seller Profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Padding text_heading_description(BuildContext context,
      {heading, description, heightBetween}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: Container(
        // color: Color(0xFFDAE9E4),
        width: width(context),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(0xFFDAE9E4),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              heading,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: heightBetween,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
