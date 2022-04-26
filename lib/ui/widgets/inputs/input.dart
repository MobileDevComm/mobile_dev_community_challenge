import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../../style/colors.dart';

class GeneralInput extends StatelessWidget {
  final String? hintText;
  final bool isPassword;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Color? fillColor;
  final void Function(String?)? onChanged;
  final TextEditingController? controller;

  const GeneralInput(
      {Key? key,
      this.hintText,
      this.isPassword = false,
      this.inputType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.validator,
      this.suffixIcon,
      this.onChanged,
      this.fillColor,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      onEditingComplete: () {
        if (textInputAction == TextInputAction.next) {
          context.nextEditableTextFocus();
        }
      },
      style: buildTextStyle(),
      cursorColor: AppColor.primary,
      decoration: buildInputDecoration(context),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(
      color: AppColor.inputText,
      fontSize: 15,
    );
  }

  InputDecoration buildInputDecoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: suffixIcon,
      filled: fillColor != null,
      fillColor: fillColor,
      contentPadding: EdgeInsets.symmetric(
          horizontal: context.screenWidth(3.5),
          vertical: context.screenHeight(2.45)),
      hintStyle: buildHintStyle(),
      enabledBorder: buildEnabledBorder(),
      focusedBorder: buildFocusedBorder(),
      errorBorder: buildErrorBorder(),
      focusedErrorBorder: buildErrorBorder(),
    );
  }

  TextStyle buildHintStyle() {
    return TextStyle(
        color: AppColor.inputPlaceholder,
        fontWeight: FontWeight.w300,
        fontSize: 15);
  }

  OutlineInputBorder buildEnabledBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.inputBorder, width: 0.5),
        borderRadius: BorderRadius.circular(10));
  }

  OutlineInputBorder buildFocusedBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: AppColor.primary, width: 0.7),
        borderRadius: BorderRadius.circular(10));
  }

  OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.error, width: 0.7),
        borderRadius: BorderRadius.circular(10));
  }
}
