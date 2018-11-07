// flutter
import 'package:flutter/material.dart';

// 公用类
import '../common/util/screen_utils.dart';
import '../common/util/navigator_utils.dart';
import '../common/localization/strings.dart';

// widget
import '../widget/button_item.dart';

/// 首页
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context, width: 1080, height: 1920);
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).homePage),
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil.scaleWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ButtonItem(
              title: Strings.of(context).widgetHome,
              onClick: () {
                NavigatorUtils.goBasicWidgetPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
