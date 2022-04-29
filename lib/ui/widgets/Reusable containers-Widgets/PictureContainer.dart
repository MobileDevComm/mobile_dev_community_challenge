import 'package:flutter/material.dart';

class PictureContainer1 extends StatelessWidget {
  const PictureContainer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 325,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2,
              style: BorderStyle.solid
          )
      ),
      child: const Center(
          child: Text('Click to browse or drag\n and drop cover photo', )),
    );
  }
}
