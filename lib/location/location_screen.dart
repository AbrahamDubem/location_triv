import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LocationScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
                myLocationEnabled: true,
                initialCameraPosition:
                    CameraPosition(target: LatLng(10, 10), zoom: 10)),
          ),
          Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    // Expanded(child: LocationSearchBox()),
                  ],
                ),
              )),
          Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: ElevatedButton(
                      child: Text('Confirm'),
                      onPressed: () {},
                    ),
                  ))),
        ],
      ),
    );
  }

  // TextField LocationSearchBox() {}
}
