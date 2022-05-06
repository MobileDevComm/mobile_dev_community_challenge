import 'package:flutter/material.dart';

import '../style/style.dart';

class UnknownPayment extends StatelessWidget {
  const UnknownPayment({
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
              color: const Color(0xffE52836),
              borderRadius: BorderRadius.circular(9)),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        child: Text(
          'Withdrawal to 346***',
          style: kHeader5TextStyle,
        ),
      ),
      subtitle: Text(
        'Yesterday at 10:20:59pm',
        style: kOrderList,
      ),
      trailing: Text(
        '-#20,000',
        style: kOrderList3,
      ),
    );
  }
}
