import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/icon&text/icontext_costum_widget.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';

class CardFeatured extends StatelessWidget {
  const CardFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    var targetWidth = 264.0;
    var calculateWidth = targetWidth / screenSizes.width;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: ImageAssetCostum(
              applyOverlay: true,
              assetImage: 'assets/image/mock_makanan.jpeg',
              width: screenSizes.width * calculateWidth,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 189,
                  child: Text(
                    'Asian white noodle with extra seafood',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: bold,
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // user profile and username
                    IconTextCostum(
                        widget: CircleAvatar(
                          radius: 10,
                          child: ImageAssetCostum(
                            assetImage: 'assets/image/user.png',
                          ),
                        ),
                        text: 'username'),
                    // icon dan waktu
                    IconTextCostum(
                      widget: Icon(
                        Icons.punch_clock_rounded,
                        color: Colors.white,
                      ),
                      text: '20 Min',
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
