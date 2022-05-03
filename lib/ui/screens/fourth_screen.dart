import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/Reusable%20containers-Widgets/pictureContainer2.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/inputs/dropdown.dart';
import '../style/texts.dart';
import '../widgets/ReusableWidgets.dart';


class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 5,),
                Text('Service Name',style: kHeadline7TextStyle,),
                const ServiceNameContainer(),
                const SizedBox(height:15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Service Description',style: kHeadline7TextStyle),
                     DescriptionContainer(descriptionText: 'Short Description', maxLines: 3,),
                  ],
                ),
                const SizedBox(height:15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amount (In Naira)', style:kHeadline7TextStyle),
                    Row(
                      children:  [
                        const Padding(
                          padding: EdgeInsets.only( right:8.0, bottom: 8.0),
                          child: AmountContainer(),
                        ),
                        PerUnitContainer(dropDownItems: const ['Per Unit'],),
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
                      padding: EdgeInsets.only(right: 8.0, bottom: 8.0),
                      child: DropdownInput(
                        items: ['Bed-Spread', 'Wome'],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Text('Add Product Image ',style: kHeadline7TextStyle),
                const SizedBox(height: 5,),
                 //TODO:the image is not loading i have to put it in a asynichrous suspension or function
                 PictureContainer2(backgroundPicture: 'assets/images/shirt.png', ),
                const Text('Delete Image', textAlign: TextAlign.right,style: TextStyle(color: Color(0xFF040B45 )),),
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
