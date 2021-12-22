import 'package:cryptoinnovate/domain/services/notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService implements NotificationInterface {
  final _plugin = FlutterLocalNotificationsPlugin();     // añado el plugin a una variable final

  // TO DO
  //Establece la configuración inicial e inicializa el pluggin FlutterLocalNotificationsPlugin
  @override
  Future<void> initialize() async {       // inicializo metodo en future y en async
    const AndroidInitializationSettings
        initializationSettingsAndroid = // constante que me va a notificar en el sistema, mediante el icono
        AndroidInitializationSettings(
            "app_icon"); // paso la imagen de android, app, src, main, res, drawable, y nombre de la imagen

    const InitializationSettings initializationSettings = InitializationSettings(
        android:
            initializationSettingsAndroid); // esto indica que corra la constante anterior

    await _plugin.initialize(initializationSettings); // inicializo el plugin FlutterLocalNotificationsPlugin
  }

  // TO DO
  // Crea el canal para notificaciones con una importancia y prioridad maxima
  @override
  NotificationDetails createChannel(
      // canal de notificaciones, detalle en las notificaciones
      {required String id,
      required String name,
      required String
          description} // lo que va a requerir o necesitar para el mensaje
      ) {  // fuera del parentesis
    final AndroidNotificationDetails androidPlataformChannelSpecifics =
        AndroidNotificationDetails(
      // le paso los detalles de la notificacion
      id,
      name, // lo que va a tener
      channelDescription: description, // canal de descripcion
      importance: Importance.max, // la importancia que va a tener
      priority: Priority.max, // la prioridad que va a tener
    );
    return NotificationDetails(android: androidPlataformChannelSpecifics);  // retorne todo lo que esta en final AndroidNotificationDetails, dentro de la variable androidPlataformChannelSpecifics
  }

  @override
  Future<void> showNotification(
      {required String title,
      required String body,
      required NotificationDetails details}) async {
    await _plugin.show(0, title, body, details);
  }
}
