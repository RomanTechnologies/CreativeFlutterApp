import 'package:flutter/flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InteractiveMapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(37.42, -122.085),
        zoom: 8,
      ),
    );
  }
}
