import 'package:flutter/material.dart';
import '../../style/texts.dart';


class DescriptionContainer extends StatelessWidget {
   DescriptionContainer({required this.descriptionText, required this.maxLines});
 String descriptionText;
int  maxLines=3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      //height: 162,
      child:  TextField(
        maxLines: maxLines,
        decoration:
         InputDecoration(
          border:  const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffBBBBBB))
          ),
          hintText: descriptionText,
             hintStyle: kBodyText4TextStyle
        ) ,
      ),
    );
  }
}
