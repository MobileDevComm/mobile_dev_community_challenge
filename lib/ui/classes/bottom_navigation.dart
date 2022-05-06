import 'package:flutter/material.dart';

import '../style/style.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(55, 203, 149, 0.05),
            blurRadius: 10,
            offset: Offset(0.0, -10.0),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image(
                  image: AssetImage('assets/pngs/home.png'),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 2,
                width: 2,
                decoration: BoxDecoration(
                    color: const Color(0xff2F4FFF),
                    borderRadius: BorderRadius.circular(2)),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Home',
                style: kBottomCont,
              )
            ],
          ),
          const Image(
            image: AssetImage('assets/pngs/Edit Square.png'),
          ),
          const Image(
            image: AssetImage('assets/pngs/shopping_cart.png'),
          ),
          const Image(
            image: AssetImage('assets/pngs/wallet.png'),
          ),
          const Image(
            image: AssetImage('assets/pngs/setting.png'),
          ),
        ],
      ),
    );
  }
}
