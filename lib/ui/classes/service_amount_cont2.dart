import 'package:flutter/material.dart';

import '../style/style.dart';

class ServiceAmountCont2 extends StatelessWidget {
  final String text;
  const ServiceAmountCont2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 170,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffbbbbbb), width: 0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(children: [
          Text(text, style: kDropDownTextStyle),
          const Positioned(
              top: 0,
              right: -5,
              bottom: 0,
              child: Icon(Icons.keyboard_arrow_down_outlined)),
        ]),
      ),
    );
  }
}
