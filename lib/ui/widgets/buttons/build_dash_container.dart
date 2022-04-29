import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

Widget buildDashContainer({required Widget child}) {
  return DottedBorder(
    color: Colors.grey.shade200,
    borderType: BorderType.RRect,
    strokeWidth: 3,
    dashPattern: const [11, 10],
    radius: const Radius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(90),
      child: Text('       Click to browse or\ndrag and drag cover photo',
          style: kDottedContainerStyle),
    ),
  );
}
