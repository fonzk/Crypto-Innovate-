import 'package:cryptoinnovate/data/services/geolocation.dart';
import 'package:geolocator/geolocator.dart';


class LocationManager {
  final gpsService = GpsService();

  Future<Position> getCurrentLocation() async {
    return await gpsService.getCurrentLocation();
  }
}
