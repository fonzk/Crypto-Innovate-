import 'package:cryptoinnovate/ui/pages/response/screens/gps_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class GpsPage extends StatelessWidget {
  GpsPage({Key? key}) : super(key: key);

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: GpsScreen(),
        ),
      ),
    );
  }
}
