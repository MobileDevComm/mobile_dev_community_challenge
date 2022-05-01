import 'package:flutter/material.dart';

import '../../style/texts.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:160,
      height:65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffE5E5E5),
      ),
      child:  TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Amount',
          labelStyle: kBodyText4TextStyle,
          hintText: 'Amount',
          hintStyle:kBodyText4TextStyle ,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1,
                color: Color(0xffBBBBBB)
            ),
          ),
        ),
      ),
    );
  }
}
