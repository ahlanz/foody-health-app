import 'package:flutter/material.dart';
import 'package:foody_health_app/theme/theme.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({super.key});

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  // menyimpan index yang aktif
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    // list data category
    final List<String> meals = ['Breakfast', 'Lunch', 'Dinner'];

    return Row(
      children: List.generate(
        meals.length,
        (index) {
          bool isActive = _activeIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _activeIndex = index;
                print(_activeIndex);
              });
            },
            child: Card(
              color: isActive ? primaryColor : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
                child: Text(
                  meals[index],
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: isActive ? Colors.white : primaryTextColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
