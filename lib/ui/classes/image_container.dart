import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final AssetImage display;
  const ImageContainer({
    Key? key,
    required this.display,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: display),
      ),
    );
  }
}
