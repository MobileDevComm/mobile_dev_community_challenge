import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../style/style.dart';

class CustomDocumentDropDown extends StatelessWidget {
  const CustomDocumentDropDown({
    Key? key,
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
      child: Stack(alignment: Alignment.center, children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffEFF1FF),
                  borderRadius: BorderRadius.circular(35)),
              child: Text(
                'BedSpreads',
                style: kCategoryStyle,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffEFF1FF),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Women',
                style: kCategoryStyle,
              ),
            ),
          ],
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
