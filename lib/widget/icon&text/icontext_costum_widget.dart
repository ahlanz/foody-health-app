import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';

class IconTextCostum extends StatelessWidget {
  final Widget widget;
  final String text;
  final Color? colorText;
  final FontWeight? fontWeight;

  const IconTextCostum({
    super.key,
    required this.widget,
    required this.text,
    this.colorText,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget,
        const SizedBox(width: 4),
        Text(
          text,
          style: primaryTextStyle.copyWith(
            color: colorText ?? Colors.white,
            fontWeight: fontWeight ?? bold,
          ),
        ),
      ],
    );
  }
}
