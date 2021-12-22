import 'package:cryptoinnovate/data/services/notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager {
  final _service = NotificationService(); //pluggin de notificaciones

  // TODO
  //Inicializa el pluggin de notificaciones
  initialize() async {
    await _service.initialize(); //Inicializa el pluggin de notificaciones
  }

  // TODO
  //Crea el canal para notificaciones
  NotificationDetails createChannel(
      {required String id,
      required String name,
      required String description} // lo que requiere
      ) {
    return _service.createChannel(            // retorne el metodo
        id: id, name: name, description: description); // lo que va a retornar
  }

  void showNotification(                      // mostrar un titulo y un body
      {required NotificationDetails channel,
      required String title,
      required String body}) async {
    await _service.showNotification(title: title, body: body, details: channel);    // me lo pase a un showNotification y muestre, y el details, le pasas el canal
  }
}