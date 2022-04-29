
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../../style/colors.dart';


// for the arrow left icon button
class ArrowLeftIcon extends StatelessWidget {
    const ArrowLeftIcon( ) ;

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
