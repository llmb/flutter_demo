import 'package:flutter/material.dart';

import '../common/RouteConst.dart';
import '../common/util/screen_utils.dart';
import '../widget/button_item.dart';

class HomePage extends StatefulWidget {
  static const String _title = "首页";
  static const String _buttonText1 = "基础组件";

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  void _goBasicWidget(BuildContext context) {
    Navigator.of(context).pushNamed(route_basic_widget_page);
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context, width: 1080, height: 1920);
    return Scaffold(
      appBar: AppBar(
        title: Text(HomePage._title),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil.scaleWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ButtonItem(
              title: HomePage._buttonText1,
              onClick: () {
                widget._goBasicWidget(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
