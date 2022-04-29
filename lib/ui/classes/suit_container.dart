import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../style/style.dart';

class SuitContainer extends StatelessWidget {
  const SuitContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight(9),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xfb1F36FF).withOpacity(0.05),
        border: Border.all(color: const Color(0xfb1F36FF), width: 0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Text(
          'Suit and Blazer',
          style: kSuitStyle,
        ),
      ),
    );
  }
}
