//第三方
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//公用类
import './common/localization/strings_localizations_delegate.dart';
import './common/localization/strings.dart';

//page
import './page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateTitle: (context) {
          return Strings.of(context).appName;
        },
        theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Colors.blue,
            primaryColor: Colors.blue,
            primaryColorDark: Colors.blue),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          StringsLocalizationsDelegate.delegate
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        home: HomePage());
  }
}
