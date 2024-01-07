import 'package:flutter/flutter.dart';

class TravelTipItem extends StatelessWidget {
  final String title;
  final String description;

  TravelTipItem({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
