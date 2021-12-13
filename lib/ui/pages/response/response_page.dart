import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/pages/logins.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsePage extends StatelessWidget {
  final ThemeController controller = Get.find();
  ResponsePage({Key? key}) : super(key: key);

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Logins(),
        ),
      ),
    );
  }
}
