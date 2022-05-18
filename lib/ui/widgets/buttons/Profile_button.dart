
import 'package:flutter/material.dart';

import '../../style/texts.dart';

class QuickAna extends StatelessWidget {
  const QuickAna({
    this.text1,
    this.color,
    this.color1,
    this.icon,
    this.text,
    this.decoration,
  });
  final String? text1;
  final Color? color;
  final Color? color1;
  final Icon? icon;
  final String? text;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9), color: Colors.blue.shade50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, bottom: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50, shape: BoxShape.circle),
                      child: Icon(Icons.edit),
                    ),
                    Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.green.shade300),
                        child: Center(
                            child: Text(
                          '4 Now',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 30),
              child: Text(
                '267',
                style: kHeadline1TextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Pendind Order'),
            ),
          ],
        ));
  }
}
