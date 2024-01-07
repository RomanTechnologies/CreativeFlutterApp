import 'package:flutter/flutter.dart';

import 'dart:locale';

import 'package:flutter_material/flutter_material.dart';

class LocalizationUtil {
  static Locale? getDefaultLocale() {
    // Determine the default locale based on user preferences or system settings.
    var locales = Localizations.delegates.map(e => e.locale).toList();
    return locales.contains((Locale systemLocale)) ? systemLocale : Locale('en');
  }
}
