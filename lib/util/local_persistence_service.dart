import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../app.dart';

class LocalPersistenceService {
  static final _localStorage = App.localStorage;

  static saveCameraPosition(CameraPosition position) {
    _localStorage.setDouble('lat', position.target.latitude);
    _localStorage.setDouble('lng', position.target.longitude);
    _localStorage.setDouble('zoom', position.zoom);
  }

  static CameraPosition getCameraPosition() {
    var lat = _localStorage.getDouble("lat") ?? 40.7264396;
    var lng = _localStorage.getDouble("lng") ?? -73.9983049;
    var zoom = _localStorage.getDouble("zoom") ?? 14.38;

    var target = LatLng(lat, lng);

    return CameraPosition(target: target, zoom: zoom);
  }
}