import 'package:flutter/material.dart';

import '../style/style.dart';
import '../widgets/buttons/leslie1.dart';
import '../widgets/buttons/leslie2.dart';

class Courtney extends StatelessWidget {
  const Courtney({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 362,
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1), blurRadius: 7),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  height: 21,
                  width: 44,
                  decoration: BoxDecoration(
                      color: const Color(0xff37CB95),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text('New', style: kOrderCont),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Image(
                  image: AssetImage('assets/pngs/courtney.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 115),
                    child: Text(
                      'Courtney Henry',
                      style: kHeader4TextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/pngs/location.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '6391 Elgin, Delaware 10299',
                          style: kOrderCont1,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1,5667 quantities',
                  style: kMiniTextStyle,
                ),
                Text(
                  '#20,220',
                  style: kListTile2,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: LeslieOption(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: LeslieOption1(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
