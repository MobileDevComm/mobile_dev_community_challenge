import 'package:flutter/material.dart';

import '../../style/style.dart';

class OrderDetailsCont extends StatelessWidget {
  const OrderDetailsCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 365,
      decoration: BoxDecoration(
        color: const Color(0xfff8f8f8),
        border: Border.all(color: const Color(0xffdcdcdc), width: 0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Total',
                  style: kMiniTextStyle,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '#20,220',
                  style: kTextSpan,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction Fee',
                  style: kMiniTextStyle,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '-#400',
                  style: kTextSpan1,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Net Total',
                  style: kHeader4TextStyle,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '+#19,820',
                  style: kTextSpan2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
