import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/colors.dart';
import '../style/texts.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                children:[
                Row(
                  children :[
                  const ArrowLeftIcon(),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text('Upload Documents', style:kHeadline3TextStyle),
                  ),
                ],
                ),
                  const SizedBox(height: 40,),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Column (
                    children: [
                      Text('Upload Documents', style:kHeadline2TextStyle ,),
                      const SizedBox(height: 7,),
                      Text('Enter the OTP that was sent to your ',style:kBodyText1TextStyle,),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    ReusableContainer1(svgLogoURI: 'assets/svgs/name 1.svg', text: 'Valid Identification Card',),
                    Expanded(child: ReusableContainer1(svgLogoURI: 'assets/svgs/Vector.svg', text: 'Electricity or Utility Bill',)),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                    child: ReusableContainer1(svgLogoURI: 'assets/svgs/badge 1.svg', text: 'CAC Certification',),
                ),
                const ReviewSentence( ),
                BottomContainer1(bottomContainerText: 'SAVE CHANGES',)
              ]
            ),
          ),
        ),
      )
    );
  }
}




