import 'package:flutter/material.dart';

class ImageAssetCostum extends StatelessWidget {
  final String assetImage;
  final double? width;
  final double? height;

  const ImageAssetCostum({
    super.key,
    required this.assetImage,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: width,
      height: height,
      fit: BoxFit.cover,
      assetImage,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox(
          child: Text('Eror image'),
        );
      },
    );
  }
}
