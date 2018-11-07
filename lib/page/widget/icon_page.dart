// flutter
import 'package:flutter/material.dart';

// 公用类
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

class IconPage extends StatelessWidget {
  IconPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).iconLayout),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.android,
              color: Colors.green,
              size: ScreenUtil.scaleWidth(200),
              textDirection: TextDirection.rtl,
              semanticLabel: '这是一个字体图标',
            ),
          )),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Icon(
              IconData(0xe61f, fontFamily: 'iconFont',matchTextDirection: false),
              color: Colors.blue,
              size: ScreenUtil.scaleWidth(200),
              textDirection: TextDirection.rtl,
              semanticLabel: '这是一个字体图标',
            ),
          )),
        ],
      ),
    );
  }
}
