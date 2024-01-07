import 'package:flutter/flutter.dart';
import '../models/itinerary_model.dart';

import 'package:firebase_database/firebase_database.dart';

class ItineraryHelpers {
  // Helper methods for itinerary management and utilities.
  static void createItinerary(ItineraryModel itinerary) async {
    // Implement logic to create and manage itineraries.
    FirebaseDatabaseIndex database = FirebaseDatabaseIndex.instance;
    await database.ref('itineraries').push(itinerary.toJson());
  }
  // Additional helper methods can be added here.
}
