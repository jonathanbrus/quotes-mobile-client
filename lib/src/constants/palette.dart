import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor mainTheme = const MaterialColor(
    0xff000000, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff000000), //10%
      100: const Color(0xff000000), //20%
      200: const Color(0xff000000), //30%
      300: const Color(0xff000000), //40%
      400: const Color(0xff000000), //50%
      500: const Color(0xff000000), //60%
      600: const Color(0xff000000), //70%
      700: const Color(0xff000000), //80%
      800: const Color(0xff000000), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
