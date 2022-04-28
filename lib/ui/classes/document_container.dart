import 'package:flutter/material.dart';

import '../style/style.dart';

class DocumentContainer extends StatelessWidget {
  const DocumentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: 159,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffbbbbbb), width: 1),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 59),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/scroll.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 65),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/dash.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 59),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/dash.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 52),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/dash.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Electricity or \n   Utility Bill',
                style: kContainerTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
