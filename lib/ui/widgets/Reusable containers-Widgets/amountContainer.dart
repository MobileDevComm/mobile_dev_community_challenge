import 'package:flutter/material.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:160,
      height:65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffE5E5E5)
      ),
      child: const TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Amount',
          hintText: 'Amount',
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Color(0xffBBBBBB)),
          ),
        ),
      ),
    );
  }
}
