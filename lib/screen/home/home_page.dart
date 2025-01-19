import 'package:flutter/material.dart';
import 'package:foody_health_app/screen/home/widget/card_category.dart';
import 'package:foody_health_app/screen/home/widget/card_featured.dart';
import 'package:foody_health_app/screen/home/widget/card_popular_recipe.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return ListTile(
        contentPadding: EdgeInsets.zero,
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
          style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget featured() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured ',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                (index) {
                  return const CardFeatured();
                },
              ),
            ),
          )
        ],
      );
    }

    Widget category() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                'See All',
                style: primaryTextStyle.copyWith(
                  color: primaryColor,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CardCategory(),
          ),
        ],
      );
    }

    Widget popularReciep() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Recipes',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                'See All',
                style: primaryTextStyle.copyWith(
                  color: primaryColor,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 8),
            scrollDirection: Axis.horizontal,
            child: CardPopularRecipe(),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            headerContent(),
            const SizedBox(height: 24),
            featured(),
            const SizedBox(height: 24),
            category(),
            const SizedBox(height: 24),
            popularReciep(),
          ],
        ),
      );
    }

    return ScaffoldCostum(
      backgorundColor: bgColor,
      body: content(),
    );
  }
}
