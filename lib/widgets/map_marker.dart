import 'package:flutter/flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarker extends StatelessWidget {
  final LatLng position;
  final String title;
  final String snippet;

  MapMarker({this.position, this.title, this.snippet});

  @override
  Widget build(BuildContext context) {
    return Marker(
      markerId: MarkerId(title),
      position: position,
      infoWindow: InfoWindow(title: title, snippet: snippet),
    );
  }
}
