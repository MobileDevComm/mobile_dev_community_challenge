import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/services_container.dart';
import 'package:mobile_dev_community_challenge/utils/extensions.dart';

import '../classes/arrow_container.dart';
import '../style/style.dart';
import '../widgets/buttons/bedspread_container.dart';
import '../widgets/buttons/women_container.dart';

class AboutService extends StatelessWidget {
  const AboutService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  child: Text('About Service', style: kHeaderTextStyle),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
            child: Container(
              height: 250,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/suit.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 15),
                child: Text(
                  'Suit and Blazer',
                  style: kHeader4TextStyle,
                ),
              ),
              const SizedBox(
                width: 120,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Image(
                  image: AssetImage('assets/pngs/pricetag.png'),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '#2,000',
                    style: TextStyle(
                        color: Color(0xff2fcf5f),
                        fontFamily: 'Apercu',
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  Text(
                    '/price',
                    style: kSmallStyle,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Laundry has been part of history since humans began to wear clothes, so the methods by which different cultures have dealt with this universal',
              style: kLatinTextStyle3,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Item Categories',
              style: kHeader5TextStyle,
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: BedSpreadCont(),
              ),
              SizedBox(
                width: 10,
              ),
              WomenCont(),
            ],
          ),
          const SizedBox(
            height: 31,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Available Mini Services',
              style: kHeader5TextStyle,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: ServicesCont(text: 'Marvellous Ironing'),
          ),
          const SizedBox(
            height: 14,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: ServicesCont(text: 'Fantaby Folding'),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: FloatingActionButton(
                  backgroundColor: const Color(0xff2FCF5F),
                  elevation: 0,
                  onPressed: () {},
                  child: const Image(image: AssetImage('assets/pngs/edit.png')),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
