import 'package:flutter/flutter.dart';
import '../models/travel_tip_model.dart';
import '../services/firebase_service.dart';

import 'package:firebase_database/firebase_database.dart';

class TravelTipsService {
  final FirebaseDatabaseInstance database = FirebaseDatabaseInstance.instance;

  Future<List<TravelTipModel>> getTravelTips() async {
    var response = await database.ref('travel_tips').get();
    return response.values.map(TravelTipModel.fromJson).toList();
  }
}
