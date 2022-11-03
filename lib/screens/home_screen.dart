import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:true_locals/app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CameraPosition _position;
  late GoogleMapController _controller;

  @override
  void initState() {
    super.initState();
    var lat = App.localStorage.getDouble("lat") ?? 40.7264396;
    var lng = App.localStorage.getDouble("lng") ?? -73.9983049;
    var zoom = App.localStorage.getDouble("zoom") ?? 14.38;

    _position = CameraPosition(target: LatLng(lat, lng), zoom: zoom);
  }

  _onMove(CameraPosition position) {
    App.localStorage.setDouble('lat', position.target.latitude);
    App.localStorage.setDouble('lng', position.target.longitude);
    App.localStorage.setDouble('zoom', position.zoom);

    setState(() {
      _position = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _position,
        onMapCreated: (controller) {
          _controller = controller;
        },
        onCameraMove: _onMove,
        myLocationButtonEnabled: false,
        tiltGesturesEnabled: false,
        rotateGesturesEnabled: false,
        buildingsEnabled: false,
        trafficEnabled: false,
        zoomControlsEnabled: false,
        compassEnabled: false,
        indoorViewEnabled: false,
        padding: MediaQuery.of(context).padding,
      ),
    );
  }
}
