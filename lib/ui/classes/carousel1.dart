import 'package:flutter/material.dart';

import '../style/style.dart';

class Carousel1 extends StatelessWidget {
  const Carousel1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff2fcf5f)),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text('This Week', style: kCarousel),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                '#500,024',
                style: kCarousel2,
              ),
              Text(
                '.15',
                style: kCarousel3,
              )
            ],
          ),
        ],
      ),
    );
  }
}
