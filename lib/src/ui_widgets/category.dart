import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  const Category({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withOpacity(0.4),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
