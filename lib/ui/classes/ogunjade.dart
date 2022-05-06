import 'package:flutter/material.dart';

import '../style/style.dart';

class OgunJadePayment extends StatelessWidget {
  const OgunJadePayment({
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
          'Payment from Ogunlade J.',
          style: kHeader5TextStyle,
        ),
      ),
      subtitle: Text(
        'Yesterday at 10:20:59pm',
        style: kOrderList,
      ),
      trailing: Text(
        '+#2,000',
        style: kOrderList2,
      ),
    );
  }
}
