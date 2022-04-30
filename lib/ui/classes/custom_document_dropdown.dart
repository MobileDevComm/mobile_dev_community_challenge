import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../widgets/buttons/bedspread_container.dart';
import '../widgets/buttons/women_container.dart';

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
          children: const [
            BedSpreadCont(),
            SizedBox(
              width: 6,
            ),
            WomenCont(),
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
