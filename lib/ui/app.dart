import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/domain/use_case/theme_management.dart';
import 'package:cryptoinnovate/ui/pages/response/response_page.dart';
import 'package:cryptoinnovate/ui/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Dependency injection: setting up state management
  late final ThemeController controller = Get.put(ThemeController());
  // Theme management
  late final ThemeManager manager = ThemeManager();
  bool isLoaded = false;

  Future<void> initializeTheme() async {
    controller.darkMode = await manager.storedTheme;
    setState(() => isLoaded = true);
  }

  @override
  void initState() {
    ever(controller.reactiveDarkMode, (bool isDarkMode) {
      manager.changeTheme(isDarkMode: isDarkMode);
    });
    initializeTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !isLoaded
        ? const CircularProgressIndicator()
        : GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.ligthTheme,
            darkTheme: MyTheme.darkTheme,
            themeMode: ThemeMode.system,
            home: ResponsePage(),
          );
  }
}
