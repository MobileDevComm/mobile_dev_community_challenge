import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/Reusable%20containers-Widgets/BottomContainer.dart';
import '../style/texts.dart';
import '../widgets/Reusable containers-Widgets/reusableNumberContainer.dart';
import '../widgets/Reusable containers-Widgets/reusableTextContainer.dart';
import '../widgets/ReusableIcons/ArrowLeftIcon.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              Row(
                children:
                [
                  const ArrowLeftIcon(),
                  Padding
                    ( padding:const  EdgeInsets.only(left: 60),
                      child: Text('Suit and Blazer', style: kHeadline3TextStyle,)),
                ],
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: AlignmentDirectional.centerStart,
                  child: Text('Add Mini-Services', style: kHeadline2TextStyle,)),
              const SizedBox(height: 15,),
              Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                style: kBodyText3TextStyle,),
              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  ReusableTextContainer1( hintText: 'Folding',),
                  const SizedBox(width:4.0),
                  Expanded(
                    child: ReusableNumberContainer1( hintNumber: '50',),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                  child: Text('Delete',style: kBodyText6TextStyle,textAlign: TextAlign.end,)),
             const SizedBox(height: 15,),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  width: 144,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xFF2FCF5F), width: 1.0
                    )
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                     const Icon( Icons.add, color: Color(0xff2FCF5F),size:16),
                      Text('ADD NEW',style: kBodyText7TextStyle,)
                        ],
                        ),
                ),
              ),
             const  SizedBox(height: 400,
             ),
              BottomContainer1(bottomContainerText: 'COMPLETE')
              ]
          ),
              )
      ),
        )
    );
  }
}

