import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';

class OrderListTile3 extends StatelessWidget {
  final Image leading;
  final Text title;
  final Text trailing;
  const OrderListTile3(
      {Key? key,
      required this.leading,
      required this.title,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text(
              '156 quantities',
              style: kListTile,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 38,
                width: 88,
                decoration: BoxDecoration(
                    color: const Color(0xffF2F4FF),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Ironing',
                    style: kSuitStyle1,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 38,
                width: 88,
                decoration: BoxDecoration(
                    color: const Color(0xffF2F4FF),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Folding',
                    style: kSuitStyle1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      trailing: trailing,
    );
  }
}
