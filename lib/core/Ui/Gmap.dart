import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GmapP extends StatefulWidget {
  const GmapP({super.key});

  @override
  _GmapPState createState() => _GmapPState();
}

class _GmapPState extends State<GmapP> {
  double latitude = 37.43296265331129;
  double longitude = -122.08832357078792;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GoogleMap(
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 5,
        ),
      ),
    );
  }
}