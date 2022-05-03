import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/colors.dart';
import 'package:mobile_dev_community_challenge/ui/style/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   actions: const [
      //     Image(
      //       image: AssetImage('assets/pngs/Group 163.png'),
      //     ),
      //   ],
      //   leading: Stack(
      //     children: const [
      //       Positioned(
      //         top: 0,
      //         left: 0,
      //         child: Image(
      //           image: AssetImage('assets/pngs/Group 21.png'),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CarouselSlider.builder(
                  itemCount: 3,
                  options: CarouselOptions(
                    aspectRatio: 1.2,
                    autoPlay: false,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      color: const Color(0xff2fcf5f),
                      child: Column(
                        children: [
                          const Text(
                            'Hi, Emmanuel',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Text('Your Available Balance', style: kCarousel),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                '#500,000',
                                style: kCarousel2,
                              ),
                              Text(
                                '.45',
                                style: kCarousel3,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
