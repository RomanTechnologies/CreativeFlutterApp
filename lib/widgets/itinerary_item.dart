import 'package:flutter/flutter.dart';

class ItineraryItem extends StatelessWidget {
  final String name;
  final DateTime startDate;
  final DateTime endDate;

  ItineraryItem({this.name, this.startDate, this.endDate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('${startDate.toLocalString()} to ${endDate.toLocalString()}'),
    );
  }
}
