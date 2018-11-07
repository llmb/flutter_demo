// flutter
import 'package:flutter/material.dart';

/// 国际化
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
      'home page': 'App Home',
      'widget home': 'Widgets Home',
      'container layout': 'Container Layout',
      'row layout': 'Row Layout',
      'column layout': 'Column Layout',
      'image layout': 'Image Layout',
      'text layout': 'Text Layout',
    },

    //中文文本
    'zh': {
      'app name': 'Flutter Demo',
      'home page': 'App首页',
      'widget home': '组件首页',
      'container layout': 'Container布局',
      'row layout': '行布局',
      'column layout': '列布局',
      'image layout': '图片布局',
      'text layout': '文本布局',
    }
  };

  String get appName => _localizedValues[locale.languageCode]['app name'];

  String get homePage => _localizedValues[locale.languageCode]['home page'];

  String get widgetHome =>
      _localizedValues[locale.languageCode]['widget home'];

  String get containerLayout => _localizedValues[locale.languageCode]['container layout'];

  String get rowLayout => _localizedValues[locale.languageCode]['row layout'];

  String get columnLayout => _localizedValues[locale.languageCode]['column layout'];

  String get imageLayout => _localizedValues[locale.languageCode]['image layout'];

  String get textLayout => _localizedValues[locale.languageCode]['text layout'];
}
