import 'package:cryptoinnovate/domain/controller/authentication_controller.dart';
import 'package:cryptoinnovate/domain/controller/chat_controller.dart';
import 'package:cryptoinnovate/domain/controller/firestore_controller.dart';
import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:cryptoinnovate/ui/pages/logins.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../firebase_central.dart';

class ResponsePage extends StatelessWidget {
  final ThemeController controller = Get.find();
  ResponsePage({Key? key}) : super(key: key);

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    // firebase conection
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return Scaffold(
      body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("error ${snapshot.error}");
            return Wrong();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            //Get.put(FirestoreController());
            Get.put(AuthenticationController());
            //Get.put(ChatController());
            return FirebaseCentral();
          }

          return Loading();
        },
      ),
    );
  }
}

class Wrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Something went wrong")),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Loading")),
    );
  }
}
