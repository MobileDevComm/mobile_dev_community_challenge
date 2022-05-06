import 'package:flutter/material.dart';
import '../../style/texts.dart';


class UserIDContainer extends StatelessWidget {
   UserIDContainer({required this.userAddress, required this.userPictureURI, required this.userName}) ;

   String userAddress;
  String userName;
  String userPictureURI;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                image:  DecorationImage(image:AssetImage (userPictureURI)),
                borderRadius: BorderRadius.circular(60)
            ),
          ),
          const SizedBox(width: 39,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName, style:kDetailScreen1TextStyle),
              const SizedBox(height: 14,),
              Row(
                children: [
                  const Icon(Icons.pin_drop, size: 16, color: Color.fromRGBO(47, 207, 95, 1),),
                  Text(userAddress, style:kDetailScreen2TextStyle ,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


