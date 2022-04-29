import 'package:flutter/material.dart';

import '../../style/colors.dart';

class ServiceInputField extends StatelessWidget {
  const ServiceInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 4,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        hintText: "Short Description",
        hintStyle: const TextStyle(
          fontFamily: 'Apercu',
          fontWeight: FontWeight.w300,
          fontSize: 19,
          color: Color(0xff5E5E5E),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(width: 0.5, color: AppColor.inputBorder)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0.7, color: AppColor.primary)),
      ),
    );
  }
}
