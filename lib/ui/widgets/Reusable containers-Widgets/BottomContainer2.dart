
import '../../style/colors.dart';
import '../../style/texts.dart';
import 'package:flutter/material.dart';

//for the apps bottom navigation widget

class BottomContainer2 extends StatelessWidget {
  BottomContainer2({required this.bottomContainerText  }) ;
  String  bottomContainerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:334,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.bottomContainer2Color,
      ),
      child:  Center(
        child: Text( bottomContainerText, style: kBottomContainer2Text),
      ),
    );
  }
}

