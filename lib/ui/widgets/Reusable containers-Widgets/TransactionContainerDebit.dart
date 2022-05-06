import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/colors.dart';
import '../../style/texts.dart';

class TransactionContainerDebit extends StatelessWidget {
  TransactionContainerDebit({  required this.TransactionAmount, required this.TransactionTime, required this.TransactionDescription  }) ;
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
                  Icon(Icons.circle, color:AppColor.DebitColor,size:6),
                  Column(
                    children: [
                      Text('$TransactionDescription',style:kHomeScreen13TextStyle ),
                      Text(TransactionTime ,style:kHomeScreen14TextStyle ),
                    ],),
                ]
            ),
            Text('-#$TransactionAmount',style: kDebitPrice1TextStyle),
          ]
      ),
    );
  }
}

