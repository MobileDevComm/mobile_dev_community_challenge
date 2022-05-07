
import '../../style/texts.dart';
import 'package:flutter/material.dart';

//for the apps bottom navigation widget

class BottomContainer5 extends StatelessWidget {
  BottomContainer5({required this.bottomContainerText  }) ;
  String  bottomContainerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:130,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(244, 246, 255, 1),
        border: Border.all(color: Color.fromRGBO(47, 207, 95, 1))
      ),
      child:  Center(
        child: Text( bottomContainerText, style: kBottomContainer4Text),
      ),
    );
  }
}

