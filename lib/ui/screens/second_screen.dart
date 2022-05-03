import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/inputs/dropdown.dart';
import '../style/colors.dart';
import '../style/texts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const ArrowLeftIcon( ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text('Upload Documents', style:kHeadline3TextStyle,),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upload Documents\nIdentification Card', style:kHeadline2TextStyle ,),
                    const SizedBox(height: 10,),
                    Text('Enter the OTP that was sent to you',style:kBodyText1TextStyle,),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Identity Type', style:  kHeadline7TextStyle,),
                    ),
                    const DropdownInput(
                      items: ['Select ID'],
                    ),
                   const SizedBox(height: 10,),
                    PictureContainer1( )
                  ]
                ),
                const ReviewSentence(),
                BottomContainer1(bottomContainerText: 'UPLOAD DOCUMENT',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


