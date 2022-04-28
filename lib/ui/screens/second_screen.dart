import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: Column(
        children: [
          Row(
            children: [
              const arrowLeftIcon( ),
              Text('Upload Documents', style:kHeadline3TextStyle),
            ],
          ),
          Column(
            children: [
              Text('Upload Documents\n Identification Card', style:kHeadline2TextStyle ,),
              Text('Enter the OTP that was sent to your ',style:kBodyText1TextStyle,),
            ],
          ),
          Column(
            children: [
              Text('Identity Type', style: kHeadline4TextStyle,),
              //DropdownButton(items: items, onChanged: onChanged),
              const DropdownInput(
                items: ['Select ID'],
              ),
              // DropdownButton(
              //     items: [],
              //     onChanged: onChanged
              // ),
              Container(

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Select ID', style:kButtonTextStyle),
                    SvgPicture.asset('assets/svgs/arrowDown.svg')
                  ],
                )
              ),
            ]
          ),

        ],
      ),
    );
  }
}
