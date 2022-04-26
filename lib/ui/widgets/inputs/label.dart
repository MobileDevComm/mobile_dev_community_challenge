import 'package:flutter/material.dart';

import 'dropdown.dart';
import 'input.dart';

class LabelInput extends StatelessWidget {
  final String labelText;
  final String hintText;

  const LabelInput({Key? key, required this.labelText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 12,),
        GeneralInput(
          hintText: hintText,
        ),
          SizedBox(height: 36,),
      ],
    );
  }
}

class LabelDropdownInput extends StatelessWidget {
  final String labelText;
  final String hintText;

  const LabelDropdownInput(
      {Key? key, required this.labelText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.headline4,
        ),
    SizedBox(height: 12,),
        const DropdownInput(),
    SizedBox(height: 36,),
      ],
    );
  }
}
