import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/Reusable%20containers-Widgets/BottomContainer.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/Reusable%20containers-Widgets/BottomContainer2.dart';
import '../style/texts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150,),
                Stack(
                    children:[
                      Center(child: SvgPicture.asset('assets/svgs/success2.svg')),
                      Center(child: SvgPicture.asset('assets/svgs/success.svg'))
                ],
                ),
                const SizedBox(height:75),
                Column(
                  children: [
                    Text('New Service Added ', style: kHeadline8TextStyle,),
                    Text('Successfully', style:kHeadline8TextStyle,),
                    const SizedBox(height:12),
                    Text('Amet minim mollit non deserunt ullamco est ',style: kBodyText8TextStyle,),
                    Text('sit aliqua dolor do amet sint. Velit officia ', style: kBodyText8TextStyle,),
                    Text('consequat duis enim ', style: kBodyText8TextStyle,),
                  ],
                ),
                const SizedBox(height: 90,),
                BottomContainer1(bottomContainerText: 'VIEW SERVICE'),
                const SizedBox(height: 15,),
                BottomContainer2(bottomContainerText: 'ADD ANOTHER SERVICE')
              ],
            ),
          ),
        ),
      )
    );
  }
}
