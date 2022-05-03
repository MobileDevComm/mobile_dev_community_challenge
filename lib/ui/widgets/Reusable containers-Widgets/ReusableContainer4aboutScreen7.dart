import 'package:flutter/material.dart';
import '../../style/texts.dart';

class ReusableContainer2 extends StatelessWidget {
   ReusableContainer2({
    Key? key, required this.ContainerText, required this.ContainerPrice
  }) : super(key: key);
String ContainerText;
String ContainerPrice;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(13)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
              child: Text( ContainerText ,style: kButton1TextStyle,)),
          Align(
            alignment: AlignmentDirectional.centerEnd,
              child: Text(ContainerPrice, style:kButton2TextStyle , ))
        ],
      ),
    );
  }
}
