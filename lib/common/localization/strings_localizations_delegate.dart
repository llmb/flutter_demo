// dart
import 'dart:async';

// flutter
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

// self
import 'strings.dart';

/// [Strings]初始化代理类
class StringsLocalizationsDelegate extends LocalizationsDelegate<Strings> {
  const StringsLocalizationsDelegate();

  static const StringsLocalizationsDelegate delegate =
      const StringsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // 只支持英文和中文环境，如果切换到其它环境，则不支持，程序会崩溃
    return ['en', 'zh'].contains(locale.languageCode);
  }

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(Strings(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<Strings> old) {
    return false;
  }
}
