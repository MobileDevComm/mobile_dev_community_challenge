import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/colors.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  final PageController pageController = PageController();
  int pageCount = 0;

  void setPageCount(int pageValue) {
    setState(() {
      pageCount = pageValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                width: double.infinity,
                color: Color(0xff2fcf5f),
                child: Stack(
                  children: [
                    Positioned(
                      left: -20,
                      top: -20,
                      child: Image(
                        image: AssetImage('assets/pngs/Group 21.png'),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              Text('Hi, Emmanuel'),
                              Image(
                                image: AssetImage('assets/pngs/bell.png'),
                              ),
                            ],
                          ),
                        ),
                        DataSlide(pageCount)
                      ],
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Text('Michael'),
            ),
          ),
        ],
      ),
    );
  }
}

class DataSlide extends StatelessWidget {
  final int? value;
  DataSlide(this.value);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = [
      {"title": "Your Available Balance", "value": 500000.45},
      {"title": "Your Available Balance", "value": 500000.45},
      {"title": "Your Available Balance", "value": 500000.45}
    ];
    return Column(
      children: [Text(data[value!]['title']), Text(data[value!][value])],
    );
  }
}
