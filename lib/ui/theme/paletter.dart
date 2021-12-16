//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor whitebg = const MaterialColor(
    0xFFFAFAFA, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFFFFFFFF), //10%
      100: const Color(0xFFFFFFFF), //20%
      200: const Color(0xFFFEFEFE), //30%
      300: const Color(0xFFFDFDFD), //40%
      400: const Color(0xFFFCFCFC), //50%
      500: const Color(0xFFFAFAFA), //60%
      600: const Color(0xFFDFDFDF), //70%
      700: const Color(0xFF969696), //80%
      800: const Color(0xFF717171), //90%
      900: const Color(0xFF494949), //100%
    },
  );

  static const MaterialColor darkbg = const MaterialColor(
    0xFF030913, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: Color(0xFFF3F3F4),
      100: Color(0xFFE6E7E8),
      200: Color(0xFFC0C2C4),
      300: Color(0xFF989B9F),
      400: Color(0xFF4F535A),
      500: Color(0xFF030913),
      600: Color(0xFF030911),
      700: Color(0xFF02060C),
      800: Color(0xFF020509),
      900: Color(0xFF010306),
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
