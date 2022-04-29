import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/classes/arrow_container.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../classes/document_dropdown.dart';
import '../style/style.dart';
import '../widgets/buttons/base_button.dart';
import '../widgets/buttons/build_dash_container.dart';

class DocumentUploads2 extends StatelessWidget {
  const DocumentUploads2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 70,
              ),
              child: Row(
                children: [
                  const ArrowContainer(),
                  const SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text('Upload Documents', style: kHeaderTextStyle),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Upload Valid\nIdentification Card',
                style: kMainHeaderTextStyle,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Enter the OTP that was sent to you',
                  style: kHeader1TextStyle),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Identity Type',
                style: kHeader3TextStyle,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: DocumentDropDown(
                text: 'Select ID',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: buildDashContainer(
                  child: Container(
                    height: context.screenHeight(10),
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Every upload is subjected to ',
                      style: kHeader2TextStyle),
                  TextSpan(text: 'review', style: kRichTextStyle)
                ]),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: BaseButton(
                onPress: () {},
                text: 'UPLOAD DOCUMENT',
                textStyle: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
