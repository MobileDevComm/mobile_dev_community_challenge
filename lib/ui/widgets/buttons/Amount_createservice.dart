import 'package:flutter/material.dart';

import '../../style/texts.dart';

class Amount extends StatelessWidget {
  const Amount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: Colors.grey.shade200, width: 1)),
            child: TextField(
              decoration:
                  InputDecoration(hintText: '       Amount',hintStyle: kHeadline4TextStyle),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: Colors.grey.shade200, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Per Unit',
                    style: kHeadline4TextStyle,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_sharp)),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}