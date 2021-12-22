import 'package:cryptoinnovate/domain/use_case/controllers/location.dart';
import 'package:cryptoinnovate/domain/use_case/controllers/permission.dart';
import 'package:cryptoinnovate/domain/use_case/permission_management.dart';
import 'package:cryptoinnovate/ui/pages/gps_page.dart';
import 'package:cryptoinnovate/ui/pages/response/screens/gps_screen.dart';
import 'package:cryptoinnovate/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ubication extends StatefulWidget {
  @override
  State<ubication> createState() => _ubicationState();
}

class _ubicationState extends State<ubication> {
  @override
  void initState() {
    PermissionsController permissionsController =
        Get.put(PermissionsController());
    permissionsController.permissionManager = PermissionManager();
    Get.lazyPut(() => LocationController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GpsScreen();
  }
}
