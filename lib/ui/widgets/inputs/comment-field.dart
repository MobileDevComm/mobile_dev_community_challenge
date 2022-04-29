import 'package:flutter/material.dart';

import '../../style/colors.dart';

class CommentInputField extends StatelessWidget {
  const CommentInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        hintText: "Include all needed Information",
        hintStyle: const TextStyle(
          fontFamily: 'Apercu',
          fontWeight: FontWeight.w300,
          fontSize: 19,
          color: Color(0xff5E5E5E),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.5, color: AppColor.inputBorder)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0.7, color: AppColor.primary)),
      ),
    );
  }
}
