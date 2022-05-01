
import '../../style/texts.dart';
import 'package:flutter/material.dart';

class ReusableTextContainer1 extends StatelessWidget {
  ReusableTextContainer1({ required this.hintText }) ;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: Color(0xff2FCF5F)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.white,
                    width: 0.7
                )
            ),
            fillColor: const Color(0xffEDF0FF),
            hintText: hintText,
            hintStyle: kBodyText5TextStyle,
          ),
        ),
      ),
    );
  }
}
