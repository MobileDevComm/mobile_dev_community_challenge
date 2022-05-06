import 'package:flutter/material.dart';
import '../../style/colors.dart';
import '../../style/texts.dart';

class TransactionContainerCredit extends StatelessWidget {
  TransactionContainerCredit({  required this.TransactionAmount, required this.TransactionTime, required this.TransactionDescription  }) ;

  double  TransactionAmount;
  String TransactionDescription;
  String  TransactionTime = 'Yesterday at 10:20:59pm';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
                children:[
                  Icon(Icons.circle, color:AppColor.CreditColor,size:6),
                  Column(
                    children: [
                      Text('$TransactionDescription',style:kHomeScreen13TextStyle ),
                      Text(TransactionTime ,style:kHomeScreen14TextStyle ),
                    ],),
                ]
            ),
            Text('+#$TransactionAmount',style: kCreditPrice1TextStyle),
          ]
      ),
    );
  }
}

