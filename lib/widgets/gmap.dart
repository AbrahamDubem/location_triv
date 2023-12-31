import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Gmap extends StatelessWidget {
  final double lat;
  final double lng;
  const Gmap({super.key, required this.lat, required this.lng});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(lat, lng), zoom: 10)),
    );
  }
}
