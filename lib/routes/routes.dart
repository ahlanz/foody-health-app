import 'package:flutter/material.dart';
import 'package:foody_health_app/screen/onboarding/onboarding_page.dart';

class AppRoute {
  static Map<String, WidgetBuilder> routes = {
    OnboardingPage.routeName : (context) => const OnboardingPage(),

  };
}