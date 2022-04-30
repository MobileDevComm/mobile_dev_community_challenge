

import 'package:flutter/material.dart';
import '../../style/texts.dart';

class SelectionContainer extends StatelessWidget {
  const SelectionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(20,0,20,10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select ID', style:kButtonTextStyle),
          ],
        )
    );
  }
}