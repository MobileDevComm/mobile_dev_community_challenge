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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.bottomContainerColor,
        ),
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
      margin: EdgeInsets.all(10),
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
            SvgPicture.asset( svgLogoURI),
            Text (text, style: kCaptionTextStyle, ),
          ],
        ),
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
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColor.backButton,
    ) ,
    child:const Icon(
        FontAwesomeIcons.arrowLeft,
        color:AppColor.iconColor
    ),
  );
}
}



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


class reviewSentence extends StatelessWidget {
  const reviewSentence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        children: [
          Text('Every upload is subjected to ', style: kBodyText1TextStyle,),
          const Text('review',style:TextStyle(color: Colors.purple,fontWeight: FontWeight.bold) ,)
        ],
      ),
    );
  }
}
