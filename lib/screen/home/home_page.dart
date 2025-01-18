import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: primaryColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Good Morning ',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                  const ImageAssetCostum(
                    assetImage: 'assets/icons/icon_cart.png',
                    width: 24,
                  )
                ],
              ),
              subtitle: Text(
                'Alena Sabyan ',
                style:
                    primaryTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
            )
          ],
        ),
      );
    }

    return ScaffoldCostum(body: content());
  }
}
