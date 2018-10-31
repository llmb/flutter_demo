//第三方
import 'package:flutter/material.dart';

//公用类
import './common/RouteConst.dart';

//page
import './page/base_widget_page.dart';
import './page/home_page.dart';
import './page/basic_widget/container.dart';
import './page/basic_widget/row_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        route_home_page: (_) => HomePage(),
        route_basic_widget_page: (_) => BasicWidgetPage(),
        route_container_page: (_) => ContainerPage(),
        route_row_page: (_) => RowPage()
      },
      initialRoute: route_home_page,
    );
  }
}
