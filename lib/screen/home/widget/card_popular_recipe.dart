import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/icon&text/icontext_costum_widget.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';

class CardPopularRecipe extends StatelessWidget {
  const CardPopularRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: const ImageAssetCostum(
                        assetImage: 'assets/image/mock_makanan.jpeg',
                        width: 168,
                        height: 128,
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.all(5.6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.favorite_outline,
                          size: 13,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 168,
                  child: Text(
                    'Healthy Taco Salad with fresh vegetable',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    IconTextCostum(
                      widget: const ImageAssetCostum(
                        assetImage: 'assets/icons/icon_calories.png',
                        width: 20,
                      ),
                      text: '120 Kcal',
                      fontWeight: regular,
                      colorText: primaryTextColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconTextCostum(
                      widget: const ImageAssetCostum(
                        assetImage: 'assets/icons/icon_time.png',
                        width: 20,
                      ),
                      text: '20 Min',
                      fontWeight: regular,
                      colorText: primaryTextColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
