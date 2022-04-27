import 'package:flutter/material.dart';
import '../style/colors.dart';
import '../style/texts.dart';
import 'package:flutter_svg/flutter_svg.dart';

//for the apps bottom navigation widget
class BottomContainer1 extends StatelessWidget {
  BottomContainer1({required this.bottomContainerText  }) ;
  String  bottomContainerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:334,
      height: 55,
      color: AppColor.bottomContainerColor,
      child:  Center(
        child: Text( bottomContainerText, style: kBottomContainerText),
      ),
    );
  }
}


// for the containers i first screen
class ReusableContainer1 extends StatelessWidget {
  ReusableContainer1({ required this.svgLogoURI,required this.text }) ;

  String text;
  String svgLogoURI;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      height: 206,
      color: AppColor.checkboxInactive,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child:Column(
        children: [
          SvgPicture.asset( svgLogoURI),
          Text (text, style: kCaptionTextStyle, ),
        ],
      ),
    );
  }
}
