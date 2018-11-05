//第三方
import 'package:flutter/material.dart';

//公用类
import '../../common/localization/strings.dart';
import '../../common/util/screen_utils.dart';

class ColumnPage extends StatefulWidget {
  @override
  _ColumnPageState createState() => new _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(Strings.of(context).column)),
      body: new Center(
        child: new Container(
          color: Colors.green.shade800,
          width: ScreenUtil.scaleWidth(600),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.up,
            textBaseline: TextBaseline.ideographic,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              new Expanded(
                  child: new Container(
                    color: Colors.red.shade700,
                    child: new Text(
                      '文本A',
                      textAlign: TextAlign.center,
                      textScaleFactor: 3.0,
                    ),
                  ),
                  flex: 0),
              new Expanded(
                  child: new Container(
                    color: Colors.blue.shade700,
                    child: new Text('文本B', textAlign: TextAlign.center),
                  ),
                  flex: 0),
              new Expanded(
                  child: new Container(
                    color: Colors.brown.shade700,
                    child: new Text('文本C', textAlign: TextAlign.center),
                  ),
                  flex: 0),
            ],
          ),
        ),
      ),
    );
  }
}
