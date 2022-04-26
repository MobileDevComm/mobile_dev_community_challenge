import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../../style/colors.dart';

class DropdownInput extends StatelessWidget {
  final List<String> items;
  final void Function(int)? onChanged;
  final int value;

  const DropdownInput({
    Key? key,
    this.items = const ["Female", "Male"],
    this.onChanged,
    this.value = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight(7),
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth(3.5),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.inputBorder, width: 0.5)),
      child: Stack(
        children: [
          const Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Icon(Icons.keyboard_arrow_down_outlined)),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: value,
                  style: const TextStyle(
                      color: AppColor.inputText,
                      // fontWeight: FontWeight.w300,
                      fontSize: 15),
                  hint: const Text("Other Options"),
                  icon: Container(),
                  onChanged: (int? val) {},
                  items: List.generate(
                      items.length,
                      (index) => DropdownMenuItem(
                          value: index + 1, child: Text(items[index]))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
