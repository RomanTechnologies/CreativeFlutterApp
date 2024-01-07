import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class ItineraryItem extends StatelessWidget {
  final String name;
  final DateTime startDate;
  final DateTime endDate;

  ItineraryItem({this.name, this.startDate, this.endDate});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.wembold)),
        subtitle: Text(${startDate.toLocalString()} to ${endDate.toLocalString()}'),
      ),
    );
  }
}
