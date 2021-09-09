import 'package:flutter/material.dart';

import '../ui_widgets/category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenScreenState createState() => _CategoriesScreenScreenState();
}

class _CategoriesScreenScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Category(title: "Love"),
                Category(title: "Motivational"),
                Category(title: "Alone"),
                Category(title: "Sad"),
                Category(title: "Lonely"),
                Category(title: "Bliss"),
                Category(title: "Firendship"),
                Category(title: "Mothers"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
