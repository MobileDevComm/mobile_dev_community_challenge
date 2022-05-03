

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../style/colors.dart';
import '../../style/texts.dart';

// for the containers i first screen5

class ReusableContainer1 extends StatelessWidget {
  ReusableContainer1({ required this.svgLogoURI,required this.text }) ;

  String text;
  String svgLogoURI;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 159,
      height: 206,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.closeBg,
          border: Border.all(color: AppColor. inputPlaceholder)
      ),
      child:Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            SvgPicture.asset( svgLogoURI),
            SizedBox(height: 40,),
            Text (text, style: kCaptionTextStyle, ),
          ],
        ),
      ),
    );
  }
}
