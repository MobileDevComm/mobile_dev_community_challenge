import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/classes/add_container.dart';
import 'package:mobile_dev_community_challenge/ui/classes/service_colored_container.dart';
import 'package:mobile_dev_community_challenge/ui/style/colors.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../classes/arrow_container.dart';
import '../style/style.dart';
import '../widgets/buttons/base_button.dart';

class LaundryServices3 extends StatelessWidget {
  const LaundryServices3({Key? key}) : super(key: key);

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
                  child: Text('Suit and Blazer', style: kHeaderTextStyle),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Add Mini-Services',
              style: kMainHeaderTextStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth(5),
            ),
            child: Text(
              'Amet minim mollit non deserunt ullamco sit aliqua dolor do amet sint.',
              style: kLatinTextStyle,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
                child: const ServiceColoredCont(text: 'Folding'),
              ),
              const SizedBox(
                width: 9,
              ),
              const ServiceColoredCont(text: '50')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
                child: Text(
                  'Delete',
                  style: kHeader4TextStyle,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: const AddCont(),
          ),
          const SizedBox(
            height: 270,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth(5),
            ),
            child: BaseButton(
              onPress: () {},
              text: 'COMPLETE',
              textStyle: const TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
