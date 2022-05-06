import 'package:flutter/material.dart';

import '../style/style.dart';

class Carousel2 extends StatelessWidget {
  const Carousel2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff2fcf5f)),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text('Your Available Balance', style: kCarousel),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                '#500,000',
                style: kCarousel2,
              ),
              Text(
                '.45',
                style: kCarousel3,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 55,
            width: 178,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(30)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'WITHDRAW',
                      style: kCarousel4,
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 2,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, bottom: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pngs/withdraw_head.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 5),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pngs/withdraw_belly.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 13),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pngs/withdraw_bottom.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
