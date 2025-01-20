import 'package:flutter/material.dart';
import 'package:foody_health_app/screen/home/widget/card_category.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search-page';
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget searchField() {
      return const TextField(
        decoration: InputDecoration(
          hintText: 'search',
          prefixIcon: Icon(
            Icons.search,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
      );
    }

    Widget category() {
      return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: CardCategory(),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            searchField(),
            const SizedBox(height: 16),
            category(),
          ],
        ),
      );
    }

    return ScaffoldCostum(
      titleAppBar: 'Search',
      isAutoImply: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      isAppBar: true,
      body: content(),
    );
  }
}
