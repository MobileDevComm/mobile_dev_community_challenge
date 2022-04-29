
import '../../style/colors.dart';
import '../../style/texts.dart';
import 'package:flutter/material.dart';

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

