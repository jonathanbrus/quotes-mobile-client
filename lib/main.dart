import 'package:flutter/material.dart';

import './src/app.dart';

import './src/constants/theme_data.dart';
import './src/helpers/generate_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agnii',
      theme: theme,
      scrollBehavior: ConstantScrollBehavior(),
      home: App(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();
  @override
  Widget buildOverscrollIndicator(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;
}
