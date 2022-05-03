
import 'package:flutter/material.dart';


class BottomCircularContainer extends StatelessWidget {
  const BottomCircularContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 61.75,
        width: 61.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(27, 207, 95, 1),
        ),
        child:Icon(Icons.edit)
    );
  }
}
