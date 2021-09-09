import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/categories.dart';
import './screens/favorites.dart';
import './screens/profile.dart';

import './widgets/double_press_exit.dart';
import './widgets/bottom_nav.dart';

class App extends StatefulWidget {
  static const routeName = "/app";

  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _index = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // Color(0xffFAFDFF),
      body: DoublePressExit(
        child: PageView(
          controller: _pageController,
          onPageChanged: (int i) {
            setState(() {
              _index = i;
            });
          },
          children: [
            HomeScreen(),
            CategoriesScreen(),
            FavoritesScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        index: _index,
        pageController: _pageController,
      ),
    );
  }
}
