import 'package:flutter/flutter.dart';

class ItineraryModel {
  String title;
  DateTime startDate;
  DateTime endDate;
  List<String> activities;

  ItineraryModel({this.title, this.startDate, this.endDate, this.activities});
}
