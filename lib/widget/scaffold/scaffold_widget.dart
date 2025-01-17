import 'package:flutter/material.dart';
import 'package:foody_health_app/widget/appbar/appbar_widget.dart';

class ScaffoldCostum extends StatelessWidget {
  final Widget body;
  final String? titleAppBar;

  const ScaffoldCostum({
    super.key,
    required this.body,
    this.titleAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBarCostum(title: titleAppBar ?? ''),
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
