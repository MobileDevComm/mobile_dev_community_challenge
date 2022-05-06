import 'package:flutter/material.dart';

import '../style/style.dart';

class PositionedCont3 extends StatelessWidget {
  const PositionedCont3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  color: const Color(0xffffedf3),
                  borderRadius: BorderRadius.circular(13)),
              child: const Image(
                image: AssetImage('assets/pngs/shopping_bag.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          Text(
            'You have a new order from ',
            style: kStacked,
          ),
          Text(
            'Adeyemi J.',
            style: kHeader4TextStyle,
          )
        ],
      ),
    );
  }
}
