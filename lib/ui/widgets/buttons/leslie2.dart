import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

class LeslieOption extends StatelessWidget {
  const LeslieOption({
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
        border: Border.all(color: const Color(0xff2FCF5F), width: 1),
        color: const Color(0xffF4F6FF),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'REJECT',
          style: TextStyle(
              color: Color(0xff2FCF5F),
              fontFamily: 'Apercu',
              fontWeight: FontWeight.w700,
              fontSize: 19),
        ),
      ),
    );
  }
}
