import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';

class ServicesCont extends StatelessWidget {
  final String text;
  const ServicesCont({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 355,
      decoration: BoxDecoration(
          color: const Color(0xfff8f8f8),
          border: Border.all(color: const Color(0xffdcdcdc), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: kMiniTextStyle,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              '#220',
              style: TextStyle(
                  fontFamily: 'Apercu',
                  color: Color(0xff040B45),
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
