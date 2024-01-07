import 'package:flutter/flutter.dart';
import '../models/itinerary_model.dart';

import '../services/firebase_service.dart';

import 'package:firebase_database/firebase_database.dart';

class ItineraryService {
  FirebaseDatabaseIndex database = FirebaseDatabaseIndex.instance;

  void addItinerary(ItineraryModel itinerary) async {
    await database.ref('itineraries').push(itinerary.toJson());
  }

  Future<List<ItineraryModel>> getItineraries() async {
    var response = await database.ref('itineraries').get();
    return response.values.map((Map<String, dynamic> entry) => ItineraryModel.fromJson(entry)).toList();
  }

  void updateItinerary(String id, ItineraryModel itinerary) async {
    await database.ref('itineraries').child(id).update(itinerary.toJson());
  }

  void deleteItinerary(String id) async {
    await database.ref('itineraries').child(id).remove();
  }
}
