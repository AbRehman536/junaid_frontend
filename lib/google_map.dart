import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {

  GoogleMapScreen({super.key});
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
        markerId: MarkerId("1"),
        position: LatLng(33.5973, 73.0479),
        infoWindow: InfoWindow(title: "Rawalpindi")
    ),
    Marker(
        markerId: MarkerId("2"),
        position: LatLng(31.5204, 74.3587),
        infoWindow: InfoWindow(title: "Lahore")
    ),
    Marker(
        markerId: MarkerId("3"),
        position: LatLng(24.8608,  67.0104),
        infoWindow: InfoWindow(title: "Karachi")
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GoogleMap(
        markers: markers,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(33.5973, 73.0479),
          zoom: 20,
        ),
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}
