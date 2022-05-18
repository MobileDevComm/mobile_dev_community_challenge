import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/upload.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';

import '../widgets/buttons/base_button.dart';
import '../widgets/buttons/carrd.dart';
import '../widgets/buttons/tabButtons.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              height: 49,
              width: 64,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Upload Document',
              style: kHeadline6TextStyle,
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 25, bottom: 6, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Upload Documents',
                    style: kHeadline1TextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter the OTP that was sent to your',
                    style: kHeadline4TextStyle,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Carrd(
                              icon2: Icons.check_outlined,
                              colors2: Colors.green,
                              icon: Icons.portrait_outlined,
                              colors: Colors.grey[100],
                              border: Border.all(
                                  color: Colors.green.shade200, width: 2),
                              text: "Valid Identification",
                              text1: 'Card ')),
                      Expanded(
                          child: Carrd(
                              icon: Icons.upcoming_outlined,
                              colors2: Colors.grey,
                              text: 'Electricity or',
                              text1: 'Utility Bill',
                              colors: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 1))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Carrd(
                      colors2: Colors.grey,
                      icon: Icons.grade_outlined,
                      text: 'CAC',
                      text1: 'Certification',
                      colors: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1)),
                  SizedBox(
                    height: 80,
                  ),
             
                  Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Every Upload is Subjected to',
                            style: kBodyText2TextStyle),
                        TextSpan(
                          text: ' Review',
                          style: kSubtitle2TextStyle,

                        )
                      ]),
                    ),
                  ),
                  BaseButton(
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Upload()));
                    },
                    text: "SAVE CHANGES",
                    textStyle: kButtonTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
