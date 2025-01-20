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
  final bool isAutoImply;
  final List<Widget>? action;
  final Widget? leading;

  const ScaffoldCostum({
    super.key,
    required this.body,
    this.titleAppBar,
    this.backgorundColor,
    this.isAppBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.isAutoImply = false,
    this.action,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgorundColor,
        appBar: isAppBar == true
            ? AppBarCostum(
                title: titleAppBar ?? '',
                automaticallyImplyLeading: isAutoImply,
                actions: action,
                leading: leading,
              )
            : null,
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
