<<<<<<< HEAD
// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cryptoinnovate/data/model/record.dart';
// import 'package:get/get.dart';
// import 'package:loggy/loggy.dart';

// class FirebaseController extends GetxController {
//   var _records = <Record>[].obs;
//   final CollectionReference users =
//       FirebaseFirestore.instance.collection('users');
//   final Stream<QuerySnapshot> _usersStream =
//       FirebaseFirestore.instance.collection('users').snapshots();
//   late StreamSubscription<Object?> streamSubscription;

//   suscribeUpdates() async {
//     logInfo('suscribeLocationUpdates');
//     streamSubscription = _usersStream.listen((event) {
//       logInfo('Got new item from fireStore');
//       _records.clear();
//       event.docs.forEach((element) {
//         _records.add(Record.fromSnapshot(element));
//       });
//       print('Got ${_records.length}');
//     });
//   }

//   unsuscribeUpdates() {
//     streamSubscription.cancel();
//   }

//   List<Record> get entries => _records;

//   addEntry(name, email, pass) {
//     users
//         .add({'email': email, 'full_name': name, 'pass': pass})
//         .then((value) => print("User added"))
//         .catchError((onError) => print("Failed to add users $onError"));
//   }

//   updateEntry(Record record) {
//     record.reference.update({
//       'email': record.email,
//       'full_name': record.full_name,
//       'pass': record.pass
//     });
//   }

//   deleteEntry(Record record) {
//     record.reference.delete();
//   }
// }
=======
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cryptoinnovate/data/model/record.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class FirebaseController extends GetxController {
  var _records = <Record>[].obs;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('users').snapshots();
  late StreamSubscription<Object?> streamSubscription;

  suscribeUpdates() async {
    logInfo('suscribeLocationUpdates');
    streamSubscription = _usersStream.listen((event) {
      logInfo('Got new item from fireStore');
      _records.clear();
      event.docs.forEach((element) {
        _records.add(Record.fromSnapshot(element));
      });
      print('Got ${_records.length}');
    });
  }

  unsuscribeUpdates() {
    streamSubscription.cancel();
  }

  List<Record> get entries => _records;

  addEntry(name, email, pass) {
    users
        .add({'email': email, 'full_name': name, 'pass': pass})
        .then((value) => print("User added"))
        .catchError((onError) => print("Failed to add users $onError"));
  }

  updateEntry(Record record) {
    record.reference.update({
      'email': record.email,
      'full_name': record.full_name,
      'pass': record.pass
    });
  }

  deleteEntry(Record record) {
    record.reference.delete();
  }
}
>>>>>>> 47231e2e1c413bcca1d4007a875d773f7b2b8595
