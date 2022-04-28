import 'package:flutter/material.dart';

import '../style/style.dart';

class DcocumentContainer2 extends StatelessWidget {
  const DcocumentContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: 159,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffbbbbbb), width: 1),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/bodybrow.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 51),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/downbrow.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/upbrow.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 64),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/star.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '        CAC\nCertification',
                style: kContainerTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
