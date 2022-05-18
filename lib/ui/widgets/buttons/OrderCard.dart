import 'package:flutter/material.dart';

import '../../style/texts.dart';
class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
   this.text1,this.text2,
  });
  final String? text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Text(text1.toString(),
            style: kSubtitle1TextStyle),
        SizedBox(
          width: 200,
        ),
        Text(text2.toString()),
      ],
    );
  }
}
