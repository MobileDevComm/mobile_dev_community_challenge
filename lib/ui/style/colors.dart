/// Will contain all the theme colors
import 'package:flutter/material.dart';

class AppColor {
  static const int primaryColorValue = 0xFF2fcf5f;

  static Color error = Color(0xFFE52836);
  static Color warning = Color(0xFFF6A609);
  static Color success = Color(0xFF2AC769);
  static const Color primary = Color(primaryColorValue);

  static const MaterialColor primarySwatch = MaterialColor(
    primaryColorValue,
    <int, Color>{
      50: Color(0xFFe5f8e9),
      100: Color(0xFFc1eec8),
      200: Color(0xFF96e3a4),
      300: Color(0xFF64d97e),
      400: Color(primaryColorValue),
      500: Color(0xFF00c53e),
      600: Color(0xFF00b535),
      700: Color(0xFF00a227),
      800: Color(0xFF009119),
      900: Color(0xFF007100),
    },
  );

  static const int secondaryColorValue = 0xFFfe337a;

  static const MaterialColor secondarySwatch = MaterialColor(
    secondaryColorValue,
    <int, Color>{
      50: Color(0xFFffe4ec),
      100: Color(0xFFffbbd1),
      200: Color(0xFFff8eb2),
      300: Color(0xFFff5d93),
      400: Color(secondaryColorValue),
      500: Color(0xFFfd0062),
      600: Color(0xFFec005f),
      700: Color(0xFFd6005b),
      800: Color(0xFFc10059),
      900: Color(0xFF9b0053),
    },
  );

  static const Color scaffoldBgColor = Colors.white;
  static Color primaryBtnBg = primarySwatch;
  static const Color primaryAltBtnBg = Color(0xFFF4F6FF);
  static const Color secondaryAltBtnBg = Color(0xFFDFE1FB);
  static const Color secondaryIconBtnBg = Color(0xFFEDF0FF);

  //for the backward button
static const Color backButton = Color.fromRGBO(149, 160, 252, 0.15);

//for the bottom navigation button
  static const bottomContainerColor = Color(0xFF2FCF5F);

  //for the bottom navigation button
  static const bottomContainer2Color = Color(0xFFF4F6FF);

 static const CreditColor= Color.fromRGBO(55, 203, 149, 1);

  static const DebitColor= Color.fromRGBO(229, 54, 40, 1);


  //Title texts, captions, inputs fields and everywhere else where black is required
  static const Color textPrimary = Color(0xFF25282B);

  //text secondary
  static const Color textSecondary = Color(0xFF52575C);

  //inactive states
  static const Color textInactive = Color(0xFF52575C);

  // inputs fields
  static const Color inputText = Color(0xFF2F2F2F);

  //list dividers
  static const Color divider = Color(0xFFE8E8E8);

  static const Color inputBorder = Color(0xFFBBBBBB);

  static const Color inputPlaceholder = Color(0xFF5E5E5E);

  static const Color onBoardingText = Color(0xFF040B45);

  static const Color regularText = Color(0xFF040B45);

  static Color regularTextLight = const Color(0xFF040B45).withOpacity(0.7);

  static const Color normalText = Color(0xFF504F4F);

  static const Color normalTextLight = Color.fromRGBO(4, 11, 69, 0.61);

  static const Color normalExtraLight = Color(0xFF767676);

  static const Color onBoardingTextAlt = Color(0xFF504F4F);

  static const Color onBoardingDotActive = Color(0xFFFE337B);

  static const Color onBoardingDot = Color(0xFFFFD7E5);

  static const Color checkboxInactive = Color(0xFFD9D9D9);

  static const Color errorLight = Color(0xFFFCF3F6);
  static const Color errorLightAlt = Color(0xFFF9DEE0);

  static const Color closeBg = Color(0xFFEDF0FF);

  static const Color divider2 = Color(0xFFE5E5E5);

  static const Color iconColor = Color(0xFF040B45);

  static const Color lightGray = Color.fromRGBO(4, 11, 69, 1);

  static const Color green = Color(0xFF37CB95);

  static const Color bd2 = Color(0xFFECECEC);

  static const boxBorder = Color(0xFFFDFDFD);

  static const ratingBg = Color(0xFFF5F5F5);

  static const ratingPercentage = Color(0xFF5C5C5C);

  static const ratingNumber = Color(0xFF4B4B4B);

  static const ratingDisplay = Color(0xFF575757);

  static const Color fieldColor = Color(0xFFF4F5FF);
}
