import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foody_health_app/screen/home/home_page.dart';
import 'package:foody_health_app/screen/search/search_page.dart';
import 'package:foody_health_app/theme/theme.dart';
import 'package:foody_health_app/widget/image_costum/image_costum_widget.dart';
import 'package:foody_health_app/widget/scaffold/scaffold_widget.dart';

class NavigationBarPage extends StatefulWidget {
  static const routeName = '/main-nav';

  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _activeIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const Center(child: Text('Notifikasi Page')),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldCostum(
      body: _pages[_activeIndex],
      bottomNavigationBar: Material(
        child: AnimatedBottomNavigationBar(
          backgroundColor: Colors.white,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
          icons: _icons,
          activeIndex: _activeIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          inactiveColor: Colors.grey,
          activeColor: primaryColor,
          onTap: (index) {
            setState(() {
              _activeIndex = index;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
        child: const ImageAssetCostum(
          assetImage: 'assets/icons/icon_koki.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
