import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/classes/akin.dart';
import 'package:mobile_dev_community_challenge/ui/classes/order_container2.dart';
import 'package:mobile_dev_community_challenge/ui/classes/order_container3.dart';
import 'package:mobile_dev_community_challenge/ui/classes/unknown_number.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../classes/bottom_navigation.dart';
import '../classes/carousel1.dart';
import '../classes/carousel2.dart';
import '../classes/carousel3.dart';
import '../classes/ogunjade.dart';
import '../classes/order_container.dart';
import '../classes/positionedcont1.dart';
import '../classes/positionedcont2.dart';
import '../classes/positionedcont3.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> data = [
      const Carousel1(),
      const Carousel2(),
      const Carousel3(),
    ];
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 419 - 81,
                width: double.infinity,
                color: const Color(0xff2fcf5f),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      left: -35,
                      top: -35,
                      child: Image(
                        image: AssetImage('assets/pngs/Group 21.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 80, left: 50),
                                child: Text('Hi, Emmanuel', style: kEmmaStyle),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 40),
                                child: Image(
                                  image: AssetImage('assets/pngs/notibell.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CarouselSlider(
                        items: data,
                        options: CarouselOptions(
                            // height: 200,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            reverse: false,
                            autoPlay: false,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeindex = index;
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeindex,
                        count: data.length,
                        effect: ExpandingDotsEffect(
                            dotColor: Colors.white.withOpacity(0.39),
                            dotHeight: 4,
                            dotWidth: 16,
                            activeDotColor: Colors.white,
                            spacing: 5),
                      ),
                    ),
                    const Positioned(
                      bottom: -53,
                      child: PositionedCont1(),
                    ),
                    const Positioned(
                      bottom: -45,
                      child: PositionedCont2(),
                    ),
                    const Positioned(
                      bottom: -38,
                      child: PositionedCont3(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 240),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Quick ', style: kBelowStack),
                          TextSpan(text: 'Analytics', style: kTextSpan3)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        OrderContainer(),
                        OrderContainer2(),
                        OrderContainer3()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 49,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Recent ', style: kBelowStack),
                              TextSpan(text: 'Transactions', style: kTextSpan3),
                            ],
                          ),
                        ),
                        Text(
                          'See all',
                          style: kLone,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const OgunJadePayment(),
                  const SizedBox(
                    height: 19,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Color(0xffEFEFEF),
                      thickness: 1.5,
                    ),
                  ),
                  const AkinPayment(),
                  const SizedBox(
                    height: 19,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Color(0xffEFEFEF),
                      thickness: 1.5,
                    ),
                  ),
                  const UnknownPayment(),
                  const SizedBox(
                    height: 19,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Color(0xffEFEFEF),
                      thickness: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: BottomNavigation(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
