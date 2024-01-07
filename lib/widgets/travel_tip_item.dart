import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class TravelTipItem extends StatelessWidget {
  final String title;
  final String description;

  TravelTipItem({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.wembold)),
        subtitle: Text(description, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
