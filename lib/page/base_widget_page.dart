//第三方
import 'package:flutter/material.dart';

//公用类
import '../common/util/navigator_utils.dart';
import '../common/util/screen_utils.dart';
import '../common/localization/strings.dart';

//widget
import '../widget/button_item.dart';

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
                NavigatorUtils.goContainerPage(context);
              },
            ),
            ButtonItem(
              title: Strings.of(context).row,
              onClick: () {
                NavigatorUtils.goRowPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
