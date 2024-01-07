import 'package:flutter/flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class MapMarker extends StatelessWidget {
  final LatLng position;
  final String title;
  final String snippet;
  final Function() onTap;

  MapMarker({ Key?key, this.position, this.title, this.snippet, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomMarker(
        markerId: MarkerID(title),
        position: position,
        infoWindow: InfoWindow(title: title, snippet: snippet),
        // Add additional design and styling here.
      ),
    );
  }
}
