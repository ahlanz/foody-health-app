import 'package:flutter/material.dart';
import 'package:foody_health_app/routes/routes.dart';
import 'package:foody_health_app/screen/onboarding/onboarding_page.dart';
import 'package:foody_health_app/theme/theme.dart';

void main() {
  runApp(const FoodyApp());
}

class FoodyApp extends StatelessWidget {
  const FoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        cardColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingPage.routeName,
      routes: AppRoute.routes,
    );
  }
}
