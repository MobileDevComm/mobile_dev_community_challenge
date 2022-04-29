import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/classes/arrow_container.dart';
import 'package:mobile_dev_community_challenge/ui/classes/document_dropdown.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/inputs/comment-field.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../classes/service_amount_cont1.dart';
import '../classes/service_amount_cont2.dart';
import '../classes/suit_container.dart';
import '../style/style.dart';
import '../widgets/buttons/base_button.dart';
import '../widgets/buttons/build_dash_container.dart';

class LaundryServices extends StatelessWidget {
  const LaundryServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('Create a Service', style: kHeaderTextStyle),
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
              'Create a Service',
              style: kMainHeaderTextStyle,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Service Name',
              style: kHeader3TextStyle,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: const SuitContainer(),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Service Description',
              style: kHeader3TextStyle,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: const CommentInputField(),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Amount (in Naira)',
              style: kHeader3TextStyle,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
                child: const ServiceAmountCont(
                  text: 'Amount',
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              const ServiceAmountCont2(
                text: 'Per Unit',
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Select Category',
              style: kHeader3TextStyle,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: const DocumentDropDown(text: 'Select Category'),
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
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth(5),
            ),
            child: BaseButton(
              onPress: () {},
              text: 'CONTINUE',
              textStyle: const TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
