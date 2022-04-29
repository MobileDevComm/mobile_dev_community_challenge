import 'package:flutter/material.dart';


class ServiceNameContainer extends StatelessWidget {
  const ServiceNameContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:329,
      height:65,
      decoration: BoxDecoration(
          color:const  Color(0xffF4F5FF),
          borderRadius:BorderRadius.circular(10)
      ) ,
      child: const TextField(
        decoration: InputDecoration(
            hintText: 'Suit and Blazer' ,
            border: OutlineInputBorder( ),
            labelText: 'Service Name',labelStyle:TextStyle()) ,
      ),
    );
  }
}
