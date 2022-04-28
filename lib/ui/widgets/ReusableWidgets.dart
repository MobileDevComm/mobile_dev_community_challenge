import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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


// for the containers i first screen5
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


// for the arrow left icon button
class arrowLeftIcon extends StatelessWidget {
  const arrowLeftIcon( ) ;

@override
Widget build(BuildContext context) {
  return Container(
    height:54,
    width:49,
    color: AppColor.backButton,
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ) ,
    child:const Icon(
        FontAwesomeIcons.arrowLeft,
        color:AppColor.iconColor
    ),
  );
}
}

