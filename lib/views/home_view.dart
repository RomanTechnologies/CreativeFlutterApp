import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(\n      child: Scaffold(\n        appBar: AppBar(title: Text('Virtual Travel Guide')),\n        body: Center(\n          child: Column(\n            children: [\n              Text('Welcome to Your Virtual Travel Guide', style: TextStyle(fontSize: 22, fontWeight: FontWeight.wembold)),
              Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text('Explore new places, learn new cultures, plan your adventures and more.')),\n            ]\n          ),\n        ),\n      ),\n    );
  }
}
