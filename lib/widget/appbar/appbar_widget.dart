import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';

class AppBarCostum extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  const AppBarCostum({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title,
        style: primaryTextStyle.copyWith(
          fontSize: 24,
          fontWeight: bold,
        ),
      ),
      centerTitle: centerTitle,
      elevation: 0,
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
