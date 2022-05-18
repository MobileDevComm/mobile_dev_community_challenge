import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_dev_community_challenge/ui/screens/MyOrders_Screen.dart';
//import 'package:mobile_dev_community_challenge/ui/screens/fifth_Screen.dart';
//import 'package:mobile_dev_community_challenge/ui/screens/sixth_SuccessScren.dart';
import 'package:mobile_dev_community_challenge/ui/screens/fourth_screen.dart';
import 'package:mobile_dev_community_challenge/ui/screens/homeScreen.dart';
import 'package:mobile_dev_community_challenge/ui/screens/orderDetails_eigthScreen.dart';
import 'package:mobile_dev_community_challenge/ui/screens/seventh_aboutService.dart';
//import 'package:mobile_dev_community_challenge/ui/screens/first_screen.dart';
//import 'package:mobile_dev_community_challenge/ui/screens/second_screen.dart';
//import 'package:mobile_dev_community_challenge/ui/screens/third_screen.dart';

import 'ui/style/colors.dart';
import 'ui/style/themes.dart';

void main() {
  // This is some comment to signify a change in the file.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.primary,
        statusBarBrightness: Brightness.light));
    return MaterialApp(
      title: 'Challenge App',
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      home: MyOrder(),
    );
  }
}
