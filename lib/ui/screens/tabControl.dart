import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/third_screen.dart';
import '../screens/my_orders.dart';
import '../screens/second_tab.dart';



import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: ('All'),),
                Tab(text: ('Pending'),),
                Tab(text: ('Running'),),
                Tab(text: ('Complete'),),
                
              ],
            ),
            title: Center(child: const Text('My Orders',textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
            
          ),
          body: const TabBarView(
            children: [
              MyOrder(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}



