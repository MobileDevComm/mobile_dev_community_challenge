import 'package:flutter/material.dart';


class SuitAndBlazer extends StatelessWidget {
  const SuitAndBlazer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue.shade100,
              width: 2,
            ),
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          decoration:
              InputDecoration(hintText: "    Suit and Blazer"),
        ));
  }
}