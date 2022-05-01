import 'package:flutter/material.dart';

class PictureContainer1 extends StatelessWidget {
   PictureContainer1({ this.backgroundPicture, this.backgroundText  }) ;
String ? backgroundPicture;
String ?backgroundText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 325,
      decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage (backgroundPicture!),
           fit: BoxFit.fill
       ),
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
