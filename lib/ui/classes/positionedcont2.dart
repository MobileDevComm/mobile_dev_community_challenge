import 'package:flutter/material.dart';

class PositionedCont2 extends StatelessWidget {
  const PositionedCont2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
