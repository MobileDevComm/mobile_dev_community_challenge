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
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                  Text('Upload Documents\n Identification Card', style:kHeadline2TextStyle ,),
                  const SizedBox(height: 10,),
                  Text('Enter the OTP that was sent to you',style:kBodyText1TextStyle,),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Identity Type', style: kHeadline4TextStyle,),
                  ),
                  //DropdownButton(items: items, onChanged: onChanged),
                  const DropdownInput(
                    items: ['Select ID'],
                  ),
                  SelectionContainer(),
                  const PictureContainer1( )
                ]
              ),
              const ReviewSentence(),
              BottomContainer1(bottomContainerText: 'UPLOAD DOCUMENT',)
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionContainer extends StatelessWidget {
  const SelectionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20,0,20,10),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select ID', style:kButtonTextStyle),
        ],
      )
    );
  }
}

