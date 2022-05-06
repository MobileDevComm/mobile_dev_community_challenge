import 'package:flutter/material.dart';

import '../style/style.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 185,
        width: 160,
        decoration: BoxDecoration(
            color: const Color(0xffF3F5FF),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 21,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xff37CB95),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      '4 New',
                      style: kOrderCont,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 54, 255, 0.15),
                            borderRadius: BorderRadius.circular(35)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 13, top: 10),
                          child: Image(
                              image: AssetImage('assets/pngs/blue_pencil.png')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 54, 255, 0.15),
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 70),
              child: Text(
                '278',
                style: kOrderNum,
              ),
            ),
            // const SizedBox(
            //   height: 6,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Text(
                'Pending Orders',
                style: kOrderNum2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
