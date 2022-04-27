import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';

import '../style/colors.dart';
import '../style/texts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: Column(
        children: [
          Row(
            children: [
              arrowLeftIcon(),
              Text('Upload Documents', style:kHeadline3TextStyle),
            ],
          ),
          Column(
            children: [
              Text('Upload Documents\n Identification Card', style:kHeadline2TextStyle ,),
              Text('Enter the OTP that was sent to your ',style:kBodyText1TextStyle,),
            ],
          ),

        ],
      ),
    );
  }
}
