import 'package:flutter/material.dart';
import '../../style/texts.dart';

class PendingOrderTypeContainer extends StatelessWidget {
   PendingOrderTypeContainer({ required this.OrderType, required this.OrderNumber,}) ;

  String OrderType;
  int OrderNumber;

   @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(243, 245, 255, 1),
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
                    color:Color.fromRGBO(31, 54, 255, 0.15),
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
                    color:Color.fromRGBO(31, 54, 255, 0.15),
                   // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(35)
                ),
              ),
            ),
            Positioned(
              left:21,
                top:36.03,
                child: Icon(Icons.edit, color:Color.fromRGBO(47, 79, 255, 1))),
            Positioned(
              left: 21,
                bottom: 46,
                child: Text(OrderNumber.toString(),style:kHomeScreen10TextStyle)),
            Positioned(
              bottom:22,
                left: 21,
                child: Text(OrderType, style:kHomeScreen11TextStyle)),
            Positioned(
              top: 21,
              right: 24,
              child: Container(
                  width:44,
                  height:21,
                  decoration: BoxDecoration(
                      color:const Color.fromRGBO(55, 203, 149, 1),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Center(child: Text('4 New', style: kHomeScreen9TextStyle ))
              ),
            )
          ],

        )
    );
  }
}
