import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';

import 'package:flutter/material.dart';

class ChangeThemeButtonWidget extends Container {
  final BuildContext context;
  final ThemeController controller;
  ChangeThemeButtonWidget({
    Key? key,
    required this.controller,
    required this.context,
  }) : super(
          key: key,
          child: Switch.adaptive(
            value: controller.darkMode,
            onChanged: (value) => controller.darkMode = !controller.darkMode,
          ),
        );
}

/*OLD VERSION
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        });
  }
}*/
