import 'package:flutter/material.dart';

class ImageStore extends StatelessWidget {
  const ImageStore({
    required this.imageUrl,
    super.key,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: (220),
      decoration: _decorationimage(),
      child: Image.network(imageUrl, fit: BoxFit.cover),
    );
  }
}

BoxDecoration _decorationimage() =>
    BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 15,
        offset: Offset(0, 5),
      ),
    ]);
