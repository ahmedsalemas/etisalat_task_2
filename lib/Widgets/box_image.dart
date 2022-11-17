import 'package:flutter/material.dart';

class BoxImage extends StatelessWidget {
  const BoxImage({
    Key? key,
    required this.hight,
    required this.width,
    required this.image,
  }) : super(key: key);

  final double hight;
  final double width;
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: MediaQuery.of(context).size.height * hight,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
