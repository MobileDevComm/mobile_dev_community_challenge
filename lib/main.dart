import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_dev_community_challenge/ui/screens/about_service.dart';
import 'package:mobile_dev_community_challenge/ui/screens/document_uploads1.dart';
import 'package:mobile_dev_community_challenge/ui/screens/document_uploads2.dart';
import 'package:mobile_dev_community_challenge/ui/screens/home_screen1.dart';
import 'package:mobile_dev_community_challenge/ui/screens/laundry_services.dart';
import 'package:mobile_dev_community_challenge/ui/screens/laundry_services2.dart';
import 'package:mobile_dev_community_challenge/ui/screens/laundry_services3.dart';
import 'package:mobile_dev_community_challenge/ui/screens/my_orders.dart';
import 'package:mobile_dev_community_challenge/ui/screens/order_details.dart';
import 'package:mobile_dev_community_challenge/ui/screens/success.dart';

import 'ui/style/colors.dart';
import 'ui/style/themes.dart';

void main() {
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
      home: const OrderDetails(),
    );
  }
}
