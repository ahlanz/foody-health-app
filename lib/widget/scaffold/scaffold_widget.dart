import 'package:flutter/material.dart';
import 'package:foody_health_app/widget/appbar/appbar_widget.dart';

class ScaffoldCostum extends StatelessWidget {
  final Widget body;
  final String? titleAppBar;
  final Color? backgorundColor;
  final bool? isAppBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const ScaffoldCostum({
    super.key,
    required this.body,
    this.titleAppBar,
    this.backgorundColor,
    this.isAppBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgorundColor,
        appBar:
            isAppBar == true ? AppBarCostum(title: titleAppBar ?? '') : null,
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
