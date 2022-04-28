import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/components/scroll.dart';

import '../style/colors.dart';
import '../style/texts.dart';
//import 'widgets/components/scroll.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Stack(
                children: [
                  Container(
                    height: height * 0.39,
                    width: width * 1,
                    color: AppColor.primarySwatch.shade500,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SafeArea(
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 20, top: 20),
                                      child: const Icon(
                                        Icons.notifications,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Positioned(
                                      left: 9,
                                      bottom: 8,
                                      child: SafeArea(
                                        child: Container(
                                          // height: 45,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white54,
                                              //   borderRadius: BorderRadius.circular(50),
                                              border: Border.all(
                                                color: Colors.blue.shade900,
                                                width: 2,
                                              )),
                                          child: Text(
                                            '2',
                                            style: kSubtitle1TextStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                        Text(
                          'Hi, Emmanuel',
                          style: topBtn,
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Text(
                          'Your Available balance',
                          style: topBtn,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            const Text(
                              '\$500,000',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text('.45', style: topBtn),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'images/Group.png',
                          scale: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'images/Rectangle 52.png',
                                scale: 1,
                              ),
                              Image.asset(
                                'images/Rectangle 51.png',
                                scale: 1,
                              ),
                              Image.asset(
                                'images/Rectangle 53.png',
                                scale: 1,
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0,
                    width: MediaQuery.of(context).size.width * 0,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: height * 0.1,
                  width: width * 0.9,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 1,
                  color: AppColor.primarySwatch.shade500,
                ),
                Positioned(
                  bottom: 8,
                  left: 18,
                  child: SizedBox(
                    height: height * 0.08,
                    width: width * 0.9,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: Colors.white,
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.center,
                          height: height * 1,
                          width: width * 0.16,
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xffFFEDF3),
                          ),
                          child: const Icon(
                            Icons.shopping_bag,
                            color: Color(0xffFE337B),
                          ),
                        ),
                        title: RichText(
                          text: TextSpan(
                            text: 'You have a new order from ',
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black45),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Adeyemi j',
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 9),
                  child: RichText(
                    text: TextSpan(
                      text: 'Quick ',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Analytic',
                          style: TextStyle(
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ScrollableWidget(height: height, width: width),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Recent ',
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black45),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Transactions',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 185, 182, 182)),
                ),
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            const MyList(
              amountColor: Colors.green,
              amountText: '+\$2,000',
              imageText: 'images/Ellipse 758.png',
              paymentText: 'Payment from Ogunlade J.',
              timeText: 'Yesterday at 10am',
            ),
            const MyList(
              amountColor: Colors.red,
              amountText: '-\$2,000',
              imageText: 'images/Ellipse 760.png',
              paymentText: 'withdrawal to 345***',
              timeText: 'Yesterday at 10pm',
            ),
            // const MyList(
            //   amountColor: Colors.green,
            //   amountText: '+\$2,000',
            //   imageText: 'images/Ellipse 758.png',
            //   paymentText: 'Payment from Ogunlade J.',
            //   timeText: 'Yesterday at 10am',
            // )
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({
    Key? key,
    required this.imageText,
    required this.paymentText,
    required this.timeText,
    required this.amountText,
    required this.amountColor,
  }) : super(key: key);

  final String imageText;
  final String paymentText;
  final String timeText;
  final String amountText;
  final Color amountColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset(
      //   'images/Ellipse 758.png',
      //   scale: 1,
      // ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Image.asset(
            imageText,
            scale: 1,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            paymentText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 9,
            ),
          ),
        ],
      ),
      subtitle: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: Text(timeText, style: const TextStyle(fontSize: 9)),
      ),
      trailing: Text(amountText,
          style: TextStyle(
            color: amountColor,
          )),
    );
  }
}
