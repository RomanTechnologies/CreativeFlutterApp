import 'package:flutter/flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/info_popup.dart';
import '../utils/map_interactions.dart';

class InteractiveMapView extends StatelessWidget {
  Final GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(37.42, -122.085),
        zoom: 8,
      ),
      markers: MapInteractions.getMarkers(),
      onTap: (MapTapEvent event) {
        InfoPopup(showMarkerInfo: event.position);
      },
    );
  }
}
