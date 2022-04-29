import 'package:flutter/material.dart';

class ArrowContainer extends StatelessWidget {
  const ArrowContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 74,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(149, 160, 252, 0.15),
          borderRadius: BorderRadius.circular(10)),
      child: const Image(
        image: AssetImage('assets/pngs/arrow_back.png'),
      ),
    );
  }
}
