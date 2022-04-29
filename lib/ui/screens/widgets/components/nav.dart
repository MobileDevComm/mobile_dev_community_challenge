import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  var onPress = true;
  var rePress = false;
  Color inactiveColor = const Color(0xffB6BACE);
  Color activeColor = Colors.green;
  var inactiveColor2 = const Color(0xffB6BACE);
  var activeColor2 = Colors.green;
  var inactiveColor3 = const Color(0xffB6BACE);
  var activeColor3 = Colors.green;
  var inactiveColor4 = const Color(0xffB6BACE);
  var activeColor4 = Colors.green;
  var inactiveColor5 = const Color(0xffB6BACE);
  var activeColor5 = Colors.green;

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Container(
        height: _height * 0.066,
        width: _width * 3,
        // decoration: const BoxDecoration(
        //   color: Color.fromARGB(255, 244, 240, 240),
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(35),
        //     topRight: Radius.circular(35),
        //   ),
        // ),
        child: Card(
          elevation: 5,
          color: const Color.fromARGB(255, 255, 255, 255),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 25,
                  color: inactiveColor,
                ),
                onPressed: () {
                  setState(() {
                    if (onPress) {
                      inactiveColor = activeColor;
                    } else if (rePress) {
                      activeColor = inactiveColor;
                    }
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 20,
                  color: inactiveColor2,
                ),
                onPressed: () {
                  setState(() {
                    if (onPress) {
                      inactiveColor2 = activeColor2;
                    }
                  });
                },
              ),
              IconButton(
                icon:
                    Icon(Icons.shopping_cart, size: 20, color: inactiveColor3),
                onPressed: () {
                  setState(() {
                    if (onPress) {
                      inactiveColor3 = activeColor3;
                    }
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.account_balance_wallet,
                    size: 20, color: inactiveColor4),
                onPressed: () {
                  setState(() {
                    if (onPress) {
                      inactiveColor4 = activeColor4;
                    }
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.settings, size: 20, color: inactiveColor5),
                onPressed: () {
                  setState(() {
                    if (onPress) {
                      inactiveColor5 = activeColor5;
                    }
                  });
                },
              ),
            ],
          ),
        ));
  }
}
