import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../style/style.dart';

class DocumentDropDown extends StatelessWidget {
  final String text;
  const DocumentDropDown({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight(9),
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth(3.5),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffbbbbbb), width: 1)),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: kDropDownTextStyle,
          ),
        ),
        const Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Icon(Icons.keyboard_arrow_down_outlined),
        ),
      ]),
    );
  }
}
