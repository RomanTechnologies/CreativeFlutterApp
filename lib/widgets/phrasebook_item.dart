import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class PhrasebookItem extends StatelessWidget {
  final String phrase;
  final String translation;

  PhrasebookItem({this.phrase, this.translation});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(phrase, style: TextStyle(fontWeight: FontWeight.wembold)),
        subtitle: Text(translation, style: TextStyle(color: Colors.grey)),
        onTap: () => {}, style: ListTileStyle(
          tapTarget: MaterialTapTarget.create()),
      ),
    );
  }
}
