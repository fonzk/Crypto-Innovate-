import 'package:cryptoinnovate/domain/use_case/notification_management.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';


class NotificationController extends GetxController {
  // use get, con GetxController
  // Observables
  final _manager = NotificationManager(); // _manager es el NotificationManager
  late NotificationDetails _channel; // _channel es el NotificationDetails

  // TODO
  //Inicializa el pluggin de notificaciones
  initialize() async {
    await _manager.initialize(); // llamo el manager e inicializo  el pluggin de notificaciones
  }

  // TODO
  //Crea el canal para notificaciones
  createChannel(
      {required String id,
      required String name,
      required String description // llamo los campos que requiere
      }) {
    _channel = _manager.createChannel(   // creo el canal
        id: id, name: name, description: description); // paso los datos
  }

  show({required String title, required String body}) =>      
      _manager.showNotification(channel: _channel, title: title, body: body);    
}