import 'package:flutter/material.dart';

class Strings {
  final Locale locale;

  Strings(this.locale);

  static Strings of(BuildContext context) {
    return Localizations.of(context, Strings);
  }

  static const Map<String, Map<String, String>> _localizedValues = {
    //英文文本
    'en': {
      'app name': 'Flutter Demo',
      'home page': 'Home',
      'basic widget': 'basic widget',
      'container': 'Container',
      'row': 'Row',
      'column': 'Column',
      'image': 'Image',
    },

    //中文文本
    'zh': {
      'app name': 'Flutter Demo',
      'home page': '首页',
      'basic widget': '基础组件',
      'container': 'Container',
      'row': '行布局',
      'column': '列布局',
      'image': '图片布局',
    }
  };

  String get appName => _localizedValues[locale.languageCode]['app name'];

  String get homePage => _localizedValues[locale.languageCode]['home page'];

  String get basicWidget =>
      _localizedValues[locale.languageCode]['basic widget'];

  String get container => _localizedValues[locale.languageCode]['container'];

  String get row => _localizedValues[locale.languageCode]['row'];

  String get column => _localizedValues[locale.languageCode]['column'];

  String get image => _localizedValues[locale.languageCode]['image'];
}
