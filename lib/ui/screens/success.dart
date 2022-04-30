import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/base_button.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 200,
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/pngs/copy_copy.png'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'New Service Added\n      Successfully',
            style: kMainHeaderTextStyle,
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Text(
              'Amet minim mollit non deserunt ullamco est \n    sit aliqua dolor do amet sint. Velit officia \n                     consequat duis enim ',
              style: kLatinTextStyle2,
            ),
          ),
          const SizedBox(
            height: 78,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: BaseButton(
              onPress: () {},
              text: 'VIEW SERVICE',
              textStyle: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: BaseButton.outlinedPrimary(
              onPress: () {},
              text: 'ADD ANOTHER SERVICE',
              textStyle: const TextStyle(color: Colors.green),
            ),
          ),
        ]),
      ),
    );
  }
}
