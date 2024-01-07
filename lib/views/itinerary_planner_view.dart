import 'package:flutter/flutter.dart';
import '../models/itinerary_model.dart';

import '../services/itinerary_service.dart';
import '../widgets/itinerary_item.dart';

class ItineraryPlannerView extends StatelessWidget {
  ItineraryService itineraryService;

  ItineraryPlannerView({Key? key, this.itineraryService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItineraryModel>>(
      future: itineraryService.getItineraries(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
        return ListView.builder(
          itemCount: snapshot.data.length,
          child: (context, index) => ItineraryItem(itinerary: snapshot.data[index]),
        );
      },
    );
  }
}
