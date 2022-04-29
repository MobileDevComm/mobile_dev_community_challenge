import 'package:flutter/material.dart';

class ShirtContainer extends StatelessWidget {
  const ShirtContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage(
              'assets/pngs/shirt.png',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
