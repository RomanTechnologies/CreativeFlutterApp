import 'package:flutter/flutter.dart';

import './views/home_view.dart';

import '._theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @Override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Travel Guide',
      theme: appTheme,
      home: HomeView(),
    );
  }
}
