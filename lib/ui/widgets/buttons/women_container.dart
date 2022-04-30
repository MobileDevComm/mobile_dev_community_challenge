import 'package:flutter/material.dart';

import '../../style/style.dart';

class WomenCont extends StatelessWidget {
  const WomenCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
