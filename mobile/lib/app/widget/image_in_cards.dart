import 'package:flutter/material.dart';

class ImageInCards extends StatelessWidget {
  const ImageInCards(
      {required this.radius,
      required this.height,
      required this.width,
      required this.imageUrl,
      super.key,
      this.toRight = true});

  const ImageInCards.toLeft(
      {required this.radius,
      required this.height,
      required this.width,
      required this.imageUrl,
      super.key,
      this.toRight = false});

  final Radius radius;

  final String imageUrl;

  final double height;
  final double width;

  final bool toRight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: radius,
          topLeft: radius,
          bottomRight: toRight ? radius : Radius.zero,
          bottomLeft: !toRight ? radius : Radius.zero),
      child: SizedBox(
        width: width,
        height: height,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
