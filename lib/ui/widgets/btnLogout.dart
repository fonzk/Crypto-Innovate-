import 'package:cryptoinnovate/domain/controller/authentication_controller.dart';
import 'package:cryptoinnovate/ui/pages/feedestados.dart';
import 'package:cryptoinnovate/ui/pages/response/response_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../firebase_central.dart';

void main() => runApp(btnLogout());

class btnLogout extends StatefulWidget {
  @override
  State<btnLogout> createState() => _btnLogoutState();
}

class _btnLogoutState extends State<btnLogout> {
  @override
  Widget build(BuildContext context) {
    AuthenticationController authenticationController = Get.find();

    var imagerow = Container(
        margin: const EdgeInsets.only(left: 9),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/user.jpg"))));

    return Container(
      child: ElevatedButton(
          onPressed: () => {
                authenticationController.logOut(),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResponsePage()))
              },
          child: imagerow,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
              shadowColor:
                  MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)))),
    );
  }
}
