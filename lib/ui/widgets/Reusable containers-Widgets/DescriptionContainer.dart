import 'package:flutter/material.dart';
import '../../style/app_fonts.dart';
import '../../style/colors.dart';


class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      //height: 162,
      child: const TextField(
        maxLines: 5,
        decoration:
        InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffBBBBBB))
          ),
          hintText: 'Include all needed information',hintStyle: TextStyle( fontFamily: AppFont.body,
          fontWeight: FontWeight.normal,
          color: AppColor.textPrimary,
          fontSize: 14,
        ),
        ) ,
      ),
    );
  }
}
