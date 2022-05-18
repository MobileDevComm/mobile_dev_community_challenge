
import 'package:flutter/material.dart';
class AddServices extends StatelessWidget {
  const AddServices({
    
    this.hinttext,});
    final String? hinttext;

  @override
  Widget build(BuildContext context) {
    return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            
                            decoration: BoxDecoration(
    color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
          color: Colors.green, width: 1)),
                            child: TextField(
    decoration:
        InputDecoration(hintText: hinttext),
                            ),
                          ),
                        ),
                      );
  }
}
