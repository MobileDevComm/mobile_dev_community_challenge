import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

class LeslieOption1 extends StatelessWidget {
  const LeslieOption1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: context.screenHeight(7),
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth(3.5),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff2FCF5F),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'ACCEPT',
          style: TextStyle(
              color: Color(0xffffffff),
              fontFamily: 'Apercu',
              fontWeight: FontWeight.w700,
              fontSize: 19),
        ),
      ),
    );
  }
}
