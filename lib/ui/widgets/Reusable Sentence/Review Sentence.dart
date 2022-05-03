import 'package:flutter/material.dart';
import '../../style/texts.dart';


class ReviewSentence extends StatelessWidget {
  const ReviewSentence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 0, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Every upload is subjected to ', style: kBodyText1TextStyle,),
            const Text('review',style:TextStyle(color: Color(0xFF040B45 ),fontWeight: FontWeight.bold) ,)
          ],
        ),
      ),
    );
  }
}
