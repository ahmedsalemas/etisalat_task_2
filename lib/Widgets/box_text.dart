import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  const BoxText({
    Key? key,
    required this.width,
    required this.description,
    required this.fontSize,
  }) : super(key: key);

  final double width;
  final String description;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 400),
        style: TextStyle(
          color: const Color.fromARGB(255, 165, 196, 211),
          fontSize: fontSize,
        ),
        child: Text(
          description,
          textAlign: TextAlign.center,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
