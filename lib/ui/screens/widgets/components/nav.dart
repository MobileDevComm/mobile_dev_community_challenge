import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
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
          color: Color.fromARGB(255, 255, 255, 255),
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
                icon:
                    const Icon(Icons.home, size: 25, color: Color(0xffB6BACE)),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.home, size: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.home, size: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.home, size: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.home, size: 20),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
