import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class InfoPopup extends StatelessWidget {
  final String title;
  final String description;

  InfoPopup({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.wembold)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(description, style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    ),
    barrierDismissible: true,
    backgroundColor: Colors.transparent,
    elevation: 5,
    shape: RoundedRectangle2Border(radius: Radius.circular(10), borderSide: BorderSide.all(Colors.grey)),
    );
  }
}
