import 'package:flutter/material.dart';
import '../../style/texts.dart';


class ReviewSentence extends StatelessWidget {
  const ReviewSentence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        children: [
          Text('Every upload is subjected to ', style: kBodyText1TextStyle,),
          const Text('review',style:TextStyle(color: Colors.purple,fontWeight: FontWeight.bold) ,)
        ],
      ),
    );
  }
}
