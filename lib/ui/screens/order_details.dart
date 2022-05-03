import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/order_listtile.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/order_listtile1.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/order_listtile2.dart';

import '../classes/arrow_container.dart';
import '../style/style.dart';
import '../widgets/buttons/base_button.dart';
import '../widgets/buttons/order_details_container.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 70,
              ),
              child: Row(
                children: [
                  const ArrowContainer(),
                  const SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text('Order Details', style: kHeaderTextStyle),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 36,
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
                    Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/pngs/location.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '6391 Elgin, Delaware 10299',
                          style: kSuitStyle1,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: OrderDetailsCont(),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Expected PickUp Time',
                    style: kLatinTextStyle4,
                  ),
                ),
                const SizedBox(
                  width: 76,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    'Transaction ID',
                    style: kLatinTextStyle4,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    '08:30:80pm',
                    style: kTimeStyle,
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                Text(
                  '#456YURG',
                  style: kTimeStyle,
                )
              ],
            ),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'Order  ', style: kHeader3TextStyle),
                TextSpan(text: 'Details', style: kTextSpan3)
              ])),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: OrderListTile(
                leading: const Image(
                  image: AssetImage('assets/pngs/socks.png'),
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'A Pair of Socks',
                  style: kHeader4TextStyle,
                ),
                trailing: Text(
                  '#6,730',
                  style: kListTile2,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Color(0xffEFEFEF),
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: OrderListTile1(
                leading: const Image(
                  image: AssetImage('assets/pngs/t_shirts.png'),
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'T-Shirt',
                  style: kHeader4TextStyle,
                ),
                trailing: Text(
                  '#11,200',
                  style: kListTile2,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Color(0xffEFEFEF),
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: OrderListTile3(
                leading: const Image(
                  image: AssetImage('assets/pngs/Panties_underwear.png'),
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'Panties & Underwear',
                  style: kHeader4TextStyle,
                ),
                trailing: Text(
                  '#770',
                  style: kListTile2,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Color(0xffEFEFEF),
                thickness: 1.5,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: BaseButton(
                onPress: () {},
                text: 'ACCEPT ORDER',
                textStyle: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: BaseButton.outlinedPrimary(
                onPress: () {},
                text: 'REJECT',
                textStyle: const TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
