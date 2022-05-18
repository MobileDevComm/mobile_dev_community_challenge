
import 'package:flutter/material.dart';

import '../../style/texts.dart';

class TabRow extends StatelessWidget {
  
  const TabRow({
  this.text,this.icon,
  });
  final String? text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 49,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10)),
            child: icon,),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            text.toString(),
            style: kHeadline6TextStyle,
          ),
        ),
      ],
    );
  }
}

