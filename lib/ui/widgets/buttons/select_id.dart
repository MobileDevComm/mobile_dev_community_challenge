import 'package:flutter/material.dart';

import '../../style/texts.dart';

class selectId extends StatelessWidget {
  const selectId({
   this.text,
  }) ;
final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                text.toString(),
                style: kHeadline4TextStyle,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down_sharp))
          ]),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}