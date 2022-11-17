// ignore: must_be_immutable
import 'package:flutter/material.dart';

import 'box_image.dart';
import 'box_text.dart';

// ignore: must_be_immutable
class BoxComponents extends StatelessWidget {
  final dynamic image;
  final dynamic description;
  int index;
  double topp;
  double leftt;
  bool visible;
  dynamic onTapped;

  BoxComponents({
    Key? key,
    required this.image,
    required this.description,
    required this.index,
    required this.topp,
    required this.leftt,
    required this.onTapped,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 400),
      top: hight * topp,
      left: width * leftt,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTapped,
            child: SizedBox(
              child: Column(
                children: [
                  if (index == 1) ...[
                    BoxImage(hight: 0.25, width: 0.5, image: image),
                  ] else ...[
                    BoxImage(hight: 0.135, width: 0.3, image: image),
                  ],
                ],
              ),
            ),
          ),
          SizedBox(
            height: hight * 0.02,
          ),
          AnimatedCrossFade(
            firstCurve: Curves.fastOutSlowIn,
            secondCurve: Curves.fastOutSlowIn,
            firstChild:
                BoxText(width: 0.37, description: '$description', fontSize: 14),
            secondChild: BoxText(
                width: 0.7,
                description: '$description \n Now Playing..',
                fontSize: 20),
            crossFadeState:
                visible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 400),
          )
        ],
      ),
    );
  }
}
