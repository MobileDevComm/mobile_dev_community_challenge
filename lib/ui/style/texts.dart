/// Will contain all the textStyles that will be used in the theme or directly in the apps
import 'package:flutter/material.dart';

import 'app_fonts.dart';
import 'colors.dart';

TextStyle kHeadline1TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 38,
);

TextStyle kHeadline2TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 26,
);

TextStyle kHeadline3TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 20,
);

TextStyle kHeadline4TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 16,
);

TextStyle kHeadline5TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 38,
);

TextStyle kHeadline6TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 26,
);

TextStyle kSubtitle1TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 18,
);

TextStyle kSubtitle2TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 14,
);

TextStyle kBodyText1TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 14,
);

TextStyle kBodyText2TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 12,
);

TextStyle kCaptionTextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 12,
);

/// This is the primary button Style
TextStyle kButtonTextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 15,
);

TextStyle kHeaderTextStyle = const TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: Color(0xff040B45),
  fontStyle: FontStyle.normal,
);

TextStyle kMainHeaderTextStyle = const TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 35,
  fontWeight: FontWeight.w700,
  color: Color(0xff040B45),
  fontStyle: FontStyle.normal,
);

TextStyle kHeader1TextStyle = const TextStyle(
  fontFamily: 'Apercu',
  fontWeight: FontWeight.w300,
  fontSize: 25,
  color: Color(0xff504F4F),
);

TextStyle kContainerTextStyle = const TextStyle(
    fontFamily: 'GT Walsheim Pro',
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Color(0xff040B45),
    fontStyle: FontStyle.normal);

TextStyle kHeader2TextStyle = const TextStyle(
  fontFamily: 'Apercu',
  fontWeight: FontWeight.w300,
  fontSize: 20,
  color: Color(0xff504F4F),
);

TextStyle kHeader3TextStyle = const TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: Color(0xff040B45),
  fontStyle: FontStyle.normal,
);

TextStyle kDropDownTextStyle = const TextStyle(
  fontFamily: 'Apercu',
  fontWeight: FontWeight.w300,
  fontSize: 20,
  color: Color(0xff5E5E5E),
);

TextStyle kDottedContainerStyle = TextStyle(
    color: const Color(0XFF242634).withOpacity(0.5),
    fontFamily: 'SF Pro Display',
    fontSize: 15,
    fontWeight: FontWeight.w500);

TextStyle kRichTextStyle = const TextStyle(
    color: Color(0xff040B45),
    decoration: TextDecoration.underline,
    decorationThickness: 2,
    decorationColor: Color(0xff040B45),
    fontWeight: FontWeight.bold,
    fontSize: 20);

TextStyle kSuitStyle = const TextStyle(
  fontFamily: 'Apercu',
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: Color(0xff2F2F2F),
);

TextStyle kCategoryStyle = const TextStyle(
    fontFamily: 'GT Walsheim Pro',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0xff2FCF5F));

TextStyle kHeader4TextStyle = const TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: Color(0xff040B45),
  fontStyle: FontStyle.normal,
);
