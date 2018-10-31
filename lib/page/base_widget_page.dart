//第三方
import 'package:flutter/material.dart';

//公用类
import '../common/util/screen_utils.dart';
import '../common/RouteConst.dart';

//widget
import '../widget/button_item.dart';

class BasicWidgetPage extends StatefulWidget {
  static const String _title = "基础组件";
  static const String _Container = "Container";
  static const String _Row = "Row";

  BasicWidgetPage({Key key}) : super(key: key);

  @override
  _BasicWidgetPageState createState() => _BasicWidgetPageState();

  void _goContainer(BuildContext context) {
    Navigator.of(context).pushNamed(route_container_page);
  }

  void _goRowPage(BuildContext context) {
    Navigator.of(context).pushNamed(route_row_page);
  }
}

class _BasicWidgetPageState extends State<BasicWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BasicWidgetPage._title),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil.scaleWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ButtonItem(
              title: BasicWidgetPage._Container,
              onClick: () {
                widget._goContainer(context);
              },
            ),
            ButtonItem(
              title: BasicWidgetPage._Row,
              onClick: () {
                widget._goRowPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
