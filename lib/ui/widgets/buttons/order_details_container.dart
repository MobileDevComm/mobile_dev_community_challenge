import 'package:flutter/material.dart';

import '../../style/style.dart';

class OrderDetailsCont extends StatelessWidget {
  const OrderDetailsCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 365,
      decoration: BoxDecoration(
        color: const Color(0xfff8f8f8),
        border: Border.all(color: const Color(0xffdcdcdc), width: 0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text:
                        'Order Total                                                ',
                    style: kMiniTextStyle),
                TextSpan(text: '#20,220', style: kTextSpan)
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text:
                        'Transaction Fee                                          ',
                    style: kMiniTextStyle),
                TextSpan(text: '-#400', style: kTextSpan1)
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Net Total                                  ',
                    style: kHeader4TextStyle),
                TextSpan(text: '+#19,820', style: kTextSpan2)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
