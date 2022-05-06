import 'package:flutter/material.dart';

import '../style/style.dart';

class AkinPayment extends StatelessWidget {
  const AkinPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 9,
          width: 9,
          decoration: BoxDecoration(
              color: const Color(0xff37CB95),
              borderRadius: BorderRadius.circular(9)),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        child: Text(
          'Payment from Akin',
          style: kHeader5TextStyle,
        ),
      ),
      subtitle: Text(
        'June 12,2020 at 08:30:01am',
        style: kOrderList,
      ),
      trailing: Text(
        '+#2,000',
        style: kOrderList2,
      ),
    );
  }
}
