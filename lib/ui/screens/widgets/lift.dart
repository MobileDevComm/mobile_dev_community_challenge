import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({
    Key? key,
    required this.imageText,
    required this.paymentText,
    required this.timeText,
    required this.amountText,
    required this.amountColor,
  }) : super(key: key);

  final String imageText;
  final String paymentText;
  final String timeText;
  final String amountText;
  final Color amountColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset(
      //   'images/Ellipse 758.png',
      //   scale: 1,
      // ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Image.asset(
            imageText,
            scale: 1,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            paymentText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
      subtitle: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: Text(timeText, style: const TextStyle(fontSize: 13)),
      ),
      trailing: Text(
        amountText,
        style: TextStyle(
          color: amountColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
