import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_dev_community_challenge/ui/screens/order_details.dart';
import 'package:mobile_dev_community_challenge/ui/screens/tabControl.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/base_button.dart';

import '../style/texts.dart';
import '../widgets/buttons/Profile_button.dart';

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex;

    return Scaffold(
      body:  Container(
          child: SingleChildScrollView(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, left: 330.0),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3, left: 14.0),
                                      child: Icon(
                                        Icons.notification_add_sharp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Positioned(
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2, color: Colors.blue),
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Center(child: Text('2')),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 18, bottom: 18, top: 1),
                                child: Center(
                                    child: Text(
                                  'Hi,Emmanuel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                )),
                              ),
                      
                              Container(
                                height: 70,
                                width: 400,
                                child: CarouselSlider(
                                  items: [1, 2, 3, 4, 5].map((i) {
                                    return Builder(
                                        builder: (BuildContext context) {
                                      return Container(
                                        height: 30,
                                        width: 200,
                                        child: Column(children: [
                                          Text(
                                            'Your Available Balance',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.baseline,
                                              textBaseline:
                                                  TextBaseline.alphabetic,
                                              children: [
                                                Text(
                                                  '#500,000',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 38,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '.45',
                                                  style: TextStyle(
                                                      color: Colors.white60),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                      );
                                    });
                                  }).toList(),
                                  options: CarouselOptions(
                                      viewportFraction: 0.75,
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 4),
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _currentIndex = index;
                                        });
                                      }),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Center(
                                  child: Container(
                                    height: 30,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 4.0),
                                            child: Text(
                                              'WITHDRAW',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Icon(
                                            Icons.wallet_giftcard,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      
                            ],
                          ),
                        ),
                      
                        // SizedBox(
                        //   height: 210,
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 60, bottom: 30),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Quick', style: kBodyText2TextStyle),
                        TextSpan(
                          text: ' Analytics',
                          style: kSubtitle2TextStyle,
                        )
                      ]),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4),
                            child: QuickAna(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4),
                            child: QuickAna(
                              color: Colors.pink,
                              color1: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text('Recent ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w200)),
                        Text('Transaction ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                        Padding(
                          padding: const EdgeInsets.only(left: 162.0),
                          child: Text(
                            'See all',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16.0, top: 1, right: 7),
                                          child: Container(
                                            height: 7,
                                            width: 7,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, right: 4),
                                          child: Text(
                                            'Payment from Ogunlade J.',
                                            style: kHeadline3TextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2.0, right: 4, top: 4),
                                      child: Text(
                                        'Yesterday at 10:20:57am',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 64,
                                ),
                                Text(
                                  '+#2,000',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                       SizedBox(
                         height: 20,),
                         BaseButton(
                           text: 'Order Details screen',
                           onPress: (){
              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TabBarDemo()));
                      }),
                       
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 80,
                top: 275,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 6.0),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 120,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Icons.ac_unit,
                                    color: Colors.red,
                                  )),
                            ),
                            Text(
                              'You have a new Order from ',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Adeyemi J. ',
                              style: kHeadline3TextStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                 
            ]),
          ),

    
        ),
      
    );
  }
}

