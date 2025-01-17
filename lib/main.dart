import 'package:flutter/material.dart';
import 'package:foody_health_app/routes/routes.dart';
import 'package:foody_health_app/screen/onboarding/onboarding_page.dart';

void main() {
  runApp(const FoodyApp());
}

class FoodyApp extends StatelessWidget {
  const FoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingPage.routeName,
      routes: AppRoute.routes,
    );
  }
}
