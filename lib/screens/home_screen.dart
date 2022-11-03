import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:true_locals/app.dart';
import 'package:true_locals/components/add_place_button.dart';
import 'package:true_locals/components/center_map_button.dart';
import 'package:true_locals/util/local_persistence_service.dart';

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

    _position = LocalPersistenceService.getCameraPosition();
  }

  _onMove(CameraPosition position) {
    LocalPersistenceService.saveCameraPosition(position);

    setState(() {
      _position = position;
    });
  }

  _center() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _position,
            onMapCreated: (controller) {
              _controller = controller;
              _controller.setMapStyle(App.mapStyle);
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
          CenterMapButton(_center),
          AddPlaceButton(),
        ],
      ),
    );
  }
}
