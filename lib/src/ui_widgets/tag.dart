import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;
  const Tag({required this.tag, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Text(tag),
    );
  }
}
