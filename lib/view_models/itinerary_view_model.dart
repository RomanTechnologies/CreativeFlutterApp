import 'package:flutter/flutter.dart';
import '../models/itinerary_model.dart';

import '../services/firebase_service.dart';

class ItineraryViewModel extends ChangeNotifier {
  list<ItineraryModel> itineraries = [];

  void addItinerary(ItineraryModel itinerary) {};

  void removeItinerary(String title) {};
}
