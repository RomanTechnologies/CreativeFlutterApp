import 'package:flutter/flutter.dart';
import '../models/itinerary_model.dart';

import '../services/itinerary_service.dart';

import '../utils/change_notifier.dart';

class ItineraryViewModel extends ChangeNotifier {
  final ItineraryService itineraryService;
  list<ItineraryModel> itineraries = [];

  ItineraryViewModel(this.itineraryService);

  Future void loadItineraries() async {
    itineraries = await itineraryService.getItineraries();
    notifyListeners();
  }

  Future void addItinerary(ItineraryModel itinerary) async {
    await itineraryService.addItinerary(itinerary);
    itineraries.add(itinerary);
    notifyListeners();
  }
}
