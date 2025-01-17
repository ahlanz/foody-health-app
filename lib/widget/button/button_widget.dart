import 'package:flutter/material.dart';

class ButtonCostumWidget extends StatelessWidget {
  final VoidCallback onPress;
  final Color? bacgkroundColor;
  final Widget? widget;

  const ButtonCostumWidget({
    super.key,
    required this.onPress,
    this.widget,
    this.bacgkroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bacgkroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: const Size(double.infinity, 54),
      ),
      onPressed: onPress,
      child: widget,
    );
  }
}
