import 'package:flutter/flutter.dart';

class InfoPopup extends StatelessWidget {
  final String title;
  final String description;

  InfoPopup({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog((
      child: Column(
        children: [\n          Text(title),
          Text(description),\n        ],\n      ),
    ));
  }
}
