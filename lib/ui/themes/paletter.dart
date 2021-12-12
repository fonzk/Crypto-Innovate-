//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor whiteToDark = const MaterialColor(
    0xffe5e5e5, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffcecece), //10%
      100: const Color(0xffb7b7b7), //20%
      200: const Color(0xffa0a0a0), //30%
      300: const Color(0xff898989), //40%
      400: const Color(0xff737373), //50%
      500: const Color(0xff5c5c5c), //60%
      600: const Color(0xff454545), //70%
      700: const Color(0xff2e2e2e), //80%
      800: const Color(0xff171717), //90%
      900: const Color(0xff000000), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
