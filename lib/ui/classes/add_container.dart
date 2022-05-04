import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

class AddCont extends StatelessWidget {
  const AddCont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: context.screenHeight(7),
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth(3.5),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xff2FCF5F), width: 1),
        color: const Color(0xffF4F6FF),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(1)),
            child: const Icon(
              Icons.add,
              color: Color(0xff2FCF5F),
              size: 30,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'ADD NEW',
              style: TextStyle(
                  color: Color(0xff2FCF5F),
                  fontFamily: 'Apercu',
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
