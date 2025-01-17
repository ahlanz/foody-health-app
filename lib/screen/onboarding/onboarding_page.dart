import 'package:flutter/material.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/';

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return const SizedBox(
        child: Stack(
          children: [],
        ),
      );
    }

    return ScaffoldCostum(
      body: content(),
    );
  }
}
