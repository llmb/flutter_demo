//第三方
import 'package:flutter/material.dart';

//公用类
import '../common/util/screen_utils.dart';
import '../common/RouteConst.dart';
import '../common/string/strings.dart';

//widget
import '../widget/button_item.dart';

class BasicWidgetPage extends StatefulWidget {
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
        title: Text(Strings.of(context).basicWidget),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil.scaleWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ButtonItem(
              title: Strings.of(context).container,
              onClick: () {
                widget._goContainer(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).row,
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
