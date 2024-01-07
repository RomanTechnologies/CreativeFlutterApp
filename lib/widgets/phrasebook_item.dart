import 'package:flutter/flutter.dart';

class PhrasebookItem extends StatelessWidget {
  final String phrase;
  final String translation;

  PhrasebookItem({this.phrase, this.translation});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phrase),
      subtitle: Text(translation),
    );
  }
}
