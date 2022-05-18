import 'package:flutter/material.dart';

import '../../style/style.dart';


class Carrd extends StatelessWidget {
  const Carrd(
      {this.colors,
      this.colors2,
      this.icon,
      this.icon2,
      this.text,
      this.border,
      this.text1});
  final String? text;
  final String? text1;
  final IconData? icon;
  final IconData? icon2;
  final Color? colors;
  final Color? colors2;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colors,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: border,
        ),
        height: 251,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120.0),
              child: Icon(
                icon2,
                color: Colors.green.shade300,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 45),
              child: Icon(
                icon,
                color: colors2,
                size: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Text(
                text.toString(),
                style: kSubtitle1TextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                text1.toString(),
                style: kSubtitle1TextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
