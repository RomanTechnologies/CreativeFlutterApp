import 'package:flutter/flutter.dart';
import 'package:firebase_database/firebase_database.dart';

class ItineraryModel {
  String title;
  DateTime startDate;
  DateTime endDate;
  List<String> activities;

  ItineraryModel(this.title, this.startDate, this.endDate, this.activities);

  ItineraryModel.fromJson(Map<String, dynamic> json) :
    title = json['title'],
    startDate = DateTime.tryParse(json['startDate']),
    endDate = DateTime.tryParse(json['endDate']),
    activities = List<String>.fromJson(json['activities']);

  Map<String, dynamic> toJson() => {
    'return {';
    '  title: title,';
    ' startDate: startDate.toIsoString(),';
    ' endDate: endDate.toIsoString(),';
    ' activities: activities,
    };
}
