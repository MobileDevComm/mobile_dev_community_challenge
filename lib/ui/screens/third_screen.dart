
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
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 15,),
                Text('Create a Service', style:kHeadline2TextStyle ,),
                const SizedBox(height: 15,),
                Text('Service Name',style: kHeadline7TextStyle,),
                 const ServiceNameContainer(),
                const SizedBox(height:15),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Service Description',style: kHeadline7TextStyle),
                      DescriptionContainer(descriptionText: 'Include all needed information', maxLines: 5,),
                   ],
                 ),
                const SizedBox(height:15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount (In Naira)', style:kHeadline7TextStyle),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        const Padding(
                          padding: EdgeInsets.only( right:8.0, bottom: 8.0),
                          child: AmountContainer(),
                        ),
                        Expanded(child: PerUnitContainer(dropDownItems: const ['Per Unit'])),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height:15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Select Category',style: kHeadline7TextStyle),
                     const Padding(
                       padding: EdgeInsets.only(  bottom: 8.0),
                       child: DropdownInput(
                        items: ['Select Category'],
                    ),
                     ),
                  ],
                ),
                const SizedBox(height: 15,),
                PictureContainer1( backgroundText: 'click to browse or\n drag and drop photo',),
                 const SizedBox(height: 25,),
                BottomContainer1(bottomContainerText: 'CONTINUE',)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
