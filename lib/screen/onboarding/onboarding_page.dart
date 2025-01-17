import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/button/button_widget.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/';

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageAssetCostum(
              assetImage: 'assets/image/food_background.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            Column(
              children: [
                const SizedBox(height: 64),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Help your path to health goals with happiness',
                    textAlign: TextAlign.center,
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ButtonCostumWidget(
                  bacgkroundColor: blackColor,
                  onPress: () {},
                  widget: Text(
                    'Login',
                    style: primaryTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Create New Account',
                  style: primaryTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return ScaffoldCostum(
      backgorundColor: primaryColor,
      body: SizedBox(
        child: Stack(
          children: [
            const ImageAssetCostum(
              assetImage: 'assets/image/pattern_app.png',
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              width: double.infinity,
              child: Text(
                'Later',
                textAlign: TextAlign.end,
                style: primaryTextStyle.copyWith(
                  color: Colors.white,
                  fontWeight: semiBold,
                ),
              ),
            ),
            content(),
          ],
        ),
      ),
    );
  }
}
