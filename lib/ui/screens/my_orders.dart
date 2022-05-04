import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/classes/courtney_henry.dart';
import 'package:mobile_dev_community_challenge/ui/classes/courtney_henry2.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';

import '../classes/leslie_alex.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: AppColor.scaffoldBgColor,
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                'All',
                style: kOrderTab,
              ),
            ),
            Tab(
              child: Text(
                'Pending',
                style: kOrderTab2,
              ),
            ),
            Tab(
              child: Text(
                'Running',
                style: kOrderTab2,
              ),
            ),
            Tab(
              child: Text(
                'Completed',
                style: kOrderTab2,
              ),
            )
          ]),
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            'My Orders',
            style: kHeaderTextStyle,
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 88,
                    width: 380,
                    decoration: const BoxDecoration(
                      color: Color(0xff040B45),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          left: -0,
                          top: 14,
                          // bottom: -11,
                          child: Image(
                            image: AssetImage('assets/pngs/Warstwa 1.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 30),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(text: 'You have ', style: kDyeCont1),
                            TextSpan(text: '2100 ', style: kDyeCont),
                            TextSpan(
                                text: 'pending orders. ', style: kDyeCont1),
                            TextSpan(text: 'View here', style: kRichTextStyle1)
                          ])),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: LeslieAlex(),
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Courtney(),
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Courtney2(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
