import 'package:flutter/material.dart';

import '../../style/style.dart';

class BedSpreadCont extends StatelessWidget {
  const BedSpreadCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
