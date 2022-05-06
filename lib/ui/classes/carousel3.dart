import 'package:flutter/material.dart';

import '../style/style.dart';

class Carousel3 extends StatelessWidget {
  const Carousel3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff2fcf5f)),
      child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Text('This Month', style: kCarousel),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.ideographic,
          children: [
            Text(
              '#5,000',
              style: kCarousel2,
            ),
            Text(
              '.45',
              style: kCarousel3,
            )
          ],
        ),
      ]),
    );
  }
}
