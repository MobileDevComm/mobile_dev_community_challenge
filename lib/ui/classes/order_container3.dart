import 'package:flutter/material.dart';

import '../style/style.dart';

class OrderContainer3 extends StatelessWidget {
  const OrderContainer3({
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
            color: const Color(0xffEAFFF7),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Stack(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(55, 203, 149, 0.15),
                            borderRadius: BorderRadius.circular(35)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 13, top: 10),
                          child: Icon(
                            Icons.settings,
                            color: Color(0xff37CB95),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(55, 203, 149, 0.15),
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
                '62',
                style: kOrderNum,
              ),
            ),
            // const SizedBox(
            //   height: 6,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Text(
                'Created Services',
                style: kOrderNum2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
