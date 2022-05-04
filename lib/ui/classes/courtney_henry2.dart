import 'package:flutter/material.dart';

import '../style/style.dart';

class Courtney2 extends StatelessWidget {
  const Courtney2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
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
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Image(
                  image: AssetImage('assets/pngs/Courtney 2.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 115, top: 40),
                    child: Text(
                      'Courtney Henry',
                      style: kHeader4TextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55, top: 10),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/pngs/location.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2972 Westheimer Rd. Santa',
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
                  '#155,215',
                  style: kListTile2,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 60,
                    width: 316,
                    decoration: BoxDecoration(
                        color: const Color(0xff2fcf5f),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'RECEIVED FROM DISPATCH',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
