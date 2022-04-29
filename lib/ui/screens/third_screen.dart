
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/inputs/dropdown.dart';
import '../style/texts.dart';
import '../widgets/ReusableWidgets.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [ const ArrowLeftIcon( ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text('Upload Documents', style:kHeadline3TextStyle,),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Text('Create a Service', style:kHeadline2TextStyle ,),
                const SizedBox(height: 5,),
                Text('Service Name',style: kBodyText1TextStyle,),
                 const ServiceNameContainer(),
                const SizedBox(height:10),
                 Column(
                   children: [
                     Text('Service Description',style: kBodyText1TextStyle),
                     const DescriptionContainer(),
                   ],
                 ),

                Column(
                  children: [
                    Text('Amount (In Naira)', style:kBodyText1TextStyle),
                    Row(
                      children:  const [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, top:0, right:8.0, bottom: 8.0),
                          child: AmountContainer(),
                        ),
                        PerUnitContainer(),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Select Category',style: kBodyText1TextStyle),
                     const Padding(
                       padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                       child: DropdownInput(
                        items: ['Select Category'],
                    ),
                     ),
                  ],
                ),
                const SizedBox(height: 10,),
                const PictureContainer1( ),
                 const SizedBox(height: 20,),
                BottomContainer1(bottomContainerText: 'CONTINUE',)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
