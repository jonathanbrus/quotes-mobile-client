import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static const routeName = "/about";
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [],
      ),
    );
  }
}
