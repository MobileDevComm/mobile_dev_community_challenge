import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
class AvailableServices extends StatelessWidget {
  const AvailableServices({
    this.text,this.text1,
  });
  final String? text;
  final String? text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Text(text.toString(),style: kHeadline4TextStyle,),
        ),
        Padding(
          padding: const EdgeInsets.only(right:12.0),
          child: Text(text1.toString(), style: kHeadline3TextStyle,),
        )
      ],),
    );
  }
}