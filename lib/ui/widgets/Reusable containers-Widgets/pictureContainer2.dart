import 'package:flutter/material.dart';

class PictureContainer2 extends StatelessWidget {
  PictureContainer2({  this.backgroundPicture,  }) ;
  String ? backgroundPicture;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 325,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage ('assets/images/shirt.png'),
              fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2,
              style: BorderStyle.solid
          )
      ),
    );
  }
}
