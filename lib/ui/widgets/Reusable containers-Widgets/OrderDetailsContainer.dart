import 'package:flutter/material.dart';
import '../../style/texts.dart';


class OrderDetailsContainer extends StatelessWidget {
  OrderDetailsContainer({
    required this.assetImageURI, required this.orderDetailsDescription, required this.orderDetailsPrice  });

  String assetImageURI;
  String orderDetailsDescription;
  int orderDetailsPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(assetImageURI))
            ),
          ),
          const SizedBox(width: 17,),
          Column(
            children: [
              Text(orderDetailsDescription, style:kDetailScreen11TextStyle ,),
              SizedBox(height: 13,),
              Text('156 quantities', style:kDetailScreen12TextStyle),
              SizedBox(height: 13,),
              Row(
                children: [
                  Container(
                    width: 58,height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Color.fromRGBO(242, 244, 255, 1)
                    ),
                    child: Center(child: Text('Ironing', style: kDetailScreen13TextStyle,)),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 58,height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Color.fromRGBO(242, 244, 255, 1)
                    ),
                    child: Center(child: Text('Folding', style: kDetailScreen13TextStyle,)),

                  )
                ],
              )
            ],
          ),
          SizedBox(width: 40,),
          Text('#$orderDetailsPrice',style: kDetailScreen14TextStyle)

        ],
      ),
    );
  }
}
