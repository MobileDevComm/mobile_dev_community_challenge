import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/create1.dart';
import 'package:mobile_dev_community_challenge/ui/screens/create_service.dart';
import 'package:mobile_dev_community_challenge/ui/screens/first_screen.dart';

import '../style/texts.dart';
import '../widgets/buttons/base_button.dart';
import '../widgets/buttons/select_id.dart';
import '../widgets/buttons/tabButtons.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

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
                onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FirstScreen()));},
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 25, bottom: 6, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Upload Valid',
                style: kHeadline1TextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Identification Card',
                style: kHeadline1TextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter the OTP that was sent to your',
                style: kHeadline4TextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Identity Type',
                style: kHeadline4TextStyle,
              ),
              SizedBox(
                height: 12,
              ),
              selectId(text: 'Select ID',),
              SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: Colors.black38,
                strokeWidth: 2,
                dashPattern: const [7],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Click to browse or'),
                        Text('Drag and drop cover photo '),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
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
                      MaterialPageRoute(builder: (context) => CreateScreen1()));
                },
                text: "UPLOAD DOCUMENTS",
                textStyle: kButtonTextStyle,
              )
            ]),
          ),
        ),
      ),
    );
  }
}


