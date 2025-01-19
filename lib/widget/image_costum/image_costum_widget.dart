import 'package:flutter/material.dart';

class ImageAssetCostum extends StatelessWidget {
  final String assetImage;
  final double? width;

  final double? height;

  final bool applyOverlay;

  const ImageAssetCostum({
    super.key,
    required this.assetImage,
    this.width,
    this.height,
    this.applyOverlay = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      assetImage,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox(
          child: Text('Error loading image'),
        );
      },
    );

    if (applyOverlay) {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.darken,
        ),
        child: image,
      );
    } else {
      return image;
    }
  }
}
