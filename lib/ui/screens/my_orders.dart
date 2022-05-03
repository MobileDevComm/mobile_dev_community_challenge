import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'My Orders',
            style: kHeaderTextStyle,
          ),
        ),
        bottom: TabBar(tabs: []),
      ),
    );
  }
}
