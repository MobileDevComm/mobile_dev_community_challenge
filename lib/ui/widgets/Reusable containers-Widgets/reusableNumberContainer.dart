import '../../style/texts.dart';
import 'package:flutter/material.dart';

class ReusableNumberContainer1 extends StatelessWidget {
   ReusableNumberContainer1({ required this.hintNumber,  }) ;
   String  hintNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color(0xff2FCF5F)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white,
                      width: 0.7
                  )
              ),
              fillColor: const Color(0xffEDF0FF),
              hintText: hintNumber,
              hintStyle: kBodyText5TextStyle,
            ),
          ),
        )
    );
  }
}
