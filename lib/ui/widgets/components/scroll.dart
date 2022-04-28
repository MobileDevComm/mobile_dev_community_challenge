import 'package:flutter/material.dart';
class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: height * 0.17,
            width: width * 0.4,
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffF3F5FF)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height * 0.03,
                      width: width * 0.13,
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff7EB78C),
                      ),
                      child: const Center(
                        child: Text('4 New',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 120, top: 5),
                  height: height * 0.04,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //   borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffD4D8FF),
                  ),
                  child: Icon(
                    Icons.edit,
                    color: const Color(0xff2F4FFF),
                    size: height * 0.026,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 120, top: 5),
                  child: const Text(
                    '287',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 110, top: 5),
                  child: const Text(
                    'Pending orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 7,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.17,
            width: width * 0.4,
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffFFF1F6),),
            child: Column(
                children: [      Container(
                  margin: const EdgeInsets.only(right: 120, top: 50),
                  height: height * 0.04,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //   borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffFFE3ED),
                  ),
                  child: Icon(
                    Icons.shopping_bag,
                    color: const Color(0xffFE337B),
                    size: height * 0.026,
                  ),
                ),
                  Container(
                    margin: const EdgeInsets.only(right: 120, top: 5),
                    child: const Text(
                      '374',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 110, top: 5),
                    child: const Text(
                      'Running orders',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 7,
                      ),
                    ),
                  ),]
            ),
          ),
          Container(
            height: height * 0.17,
            width: width * 0.4,
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffEAFFF7)),
            child: Column(
                children: [      Container(
                  margin: const EdgeInsets.only(right: 120, top: 50),
                  height: height * 0.04,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //   borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffCFF7E8),
                  ),
                  child: Icon(
                    Icons.settings,
                    color:  Colors.green,
                    size: height * 0.026,
                  ),
                ),
                  Container(
                    margin: const EdgeInsets.only(right: 120, top: 5),
                    child: const Text(
                      '67',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 110, top: 5),
                    child: const Text(
                      'Created service',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 7,
                      ),
                    ),
                  ),]
            ),
          )
        ],
      ),
    );
  }
}
