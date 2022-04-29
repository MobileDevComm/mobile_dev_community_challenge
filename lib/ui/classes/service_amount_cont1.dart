import 'package:flutter/material.dart';

import '../style/style.dart';

class ServiceAmountCont extends StatelessWidget {
  final String text;
  const ServiceAmountCont({
    Key? key,
    required this.text,
  }) : super(key: key);

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
        child: Text(text, style: kDropDownTextStyle),
      ),
    );
  }
}
