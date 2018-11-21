// flutter
import 'package:flutter/material.dart';

// 公用类
import '../common/util/screen_utils.dart';
import '../common/util/navigator_utils.dart';
import '../common/localization/strings.dart';

// widget
import '../widget/button_item.dart';

/// 跳转到相关组件HomePage
class BasicWidgetPage extends StatefulWidget {
  BasicWidgetPage({Key key}) : super(key: key);

  @override
  _BasicWidgetPageState createState() => _BasicWidgetPageState();
}

class _BasicWidgetPageState extends State<BasicWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).widgetHome),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil.scaleWidth(10)),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ButtonItem(
              title: Strings.of(context).containerLayout,
              onClick: () {
                NavigatorUtils.goContainerPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).rowLayout,
              onClick: () {
                NavigatorUtils.goRowPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).columnLayout,
              onClick: () {
                NavigatorUtils.goColumnPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).imageLayout,
              onClick: () {
                NavigatorUtils.goImagePage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).textLayout,
              onClick: () {
                NavigatorUtils.goTextPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).iconLayout,
              onClick: () {
                NavigatorUtils.goIconPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).flutterLogoLayout,
              onClick: () {
                NavigatorUtils.goFlutterLogPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
