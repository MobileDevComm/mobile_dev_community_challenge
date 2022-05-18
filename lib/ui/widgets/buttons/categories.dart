
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
   this.text,
  }) ;
  final String? text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 30,
        width: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(text.toString(), style: TextStyle(color: Colors.green),)),
      ),
    );
  }
}
