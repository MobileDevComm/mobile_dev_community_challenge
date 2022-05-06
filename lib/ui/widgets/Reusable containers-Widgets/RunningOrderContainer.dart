import 'package:flutter/material.dart';
import '../../style/texts.dart';

class RunningOrderTypeContainer extends StatelessWidget {
  RunningOrderTypeContainer({ required this.OrderType, required this.OrderNumber,}) ;

  String OrderType;
  int OrderNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:const Color.fromRGBO(255, 240, 245, 0.99),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 21,
              left: 10,
              child: Container(
                width: 35,
                height: 35,
                decoration:  BoxDecoration(
                    color:Color.fromRGBO(255, 150, 187, 0.15),
                    //  shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(35)
                ),
              ),
            ),
            Positioned(
              top: 21,
              left: 24,
              child: Container(
                width: 35,
                height: 35,
                decoration:  BoxDecoration(
                    color:Color.fromRGBO(255, 150, 187, 0.15),
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(35)
                ),
              ),
            ),
            Positioned(
                left:21,
                top:36.03,
                child: Icon(Icons.shopping_bag, color:Color.fromRGBO(254, 51, 123, 1))),
            Positioned(
                left: 21,
                bottom: 46,
                child: Text(OrderNumber.toString(),style:kHomeScreen10TextStyle)),
            Positioned(
                bottom:22,
                left: 21,
                child: Text(OrderType, style:kHomeScreen11TextStyle)),
          ],

        )
    );
  }
}
