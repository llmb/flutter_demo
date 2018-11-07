// flutter
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:fluttertoast/fluttertoast.dart';

// 公用类
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

class TextPage extends StatefulWidget {
  final Paint _paint;

  TextPage({Key key})
      : _paint = new Paint()
          ..color = Colors.amber[200]
          ..isAntiAlias = true,
        super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  TapGestureRecognizer _greenTextTapGestureRecognizer;
  TapGestureRecognizer _blueTextTapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _greenTextTapGestureRecognizer = new TapGestureRecognizer()
      ..onTap = showClickGreenTextToast;

    _blueTextTapGestureRecognizer = new TapGestureRecognizer()
      ..onTap = showClickBlueTextToast;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _greenTextTapGestureRecognizer.dispose();
    _blueTextTapGestureRecognizer.dispose();
  }

  void showClickGreenTextToast() {
    Fluttertoast.showToast(msg: '点击了绿色字体');
  }

  void showClickBlueTextToast() {
    Fluttertoast.showToast(msg: '点击了蓝色字体');
  }

  /// 构建普通文本界面
  Widget _buildText() {
    return Expanded(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
        elevation: ScreenUtil.scaleWidth(10),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil.scaleWidth(10))),
        ),
        child: Container(
            color: Colors.red,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(20)),
            child: Text(
              '这     是普通文本,字体被放大一倍',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              semanticsLabel: '这是描述信息',
              softWrap: false,
              textScaleFactor: 1,
              style: TextStyle(
                  fontSize: ScreenUtil.scaleWidth(50),
                  wordSpacing: ScreenUtil.scaleWidth(50),
                  height: 1.5,
                  shadows: <Shadow>[
                    Shadow(
                        color: Colors.grey[350],
                        blurRadius: 1.5,
                        offset: Offset(ScreenUtil.scaleWidth(5),
                            ScreenUtil.scaleHeight(5)))
                  ]),
            )),
      ),
    );
  }

  /// 构建复杂的文本
  Widget _buildRichText() {
    return Expanded(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
        elevation: ScreenUtil.scaleWidth(10),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil.scaleWidth(10))),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(ScreenUtil.scaleWidth(20)),
          child: Text.rich(
            TextSpan(
                text: '这是复杂的文本',
                style: TextStyle(
                    decorationColor: Colors.red,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.dotted,
                    background: widget._paint),
                children: <TextSpan>[
                  TextSpan(
                      text: '\n我是绿色的',
                      recognizer: _greenTextTapGestureRecognizer,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: ScreenUtil.scaleWidth(40))),
                  TextSpan(
                      text: '\n我是蓝色的',
                      recognizer: _blueTextTapGestureRecognizer,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: ScreenUtil.scaleWidth(40))),
                  TextSpan(
                      text: '\n我是大号字体',
                      style: TextStyle(fontSize: ScreenUtil.scaleWidth(60)))
                ]),
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            semanticsLabel: '这是描述信息',
            softWrap: false,
            textScaleFactor: 1.0,
            style: TextStyle(fontSize: ScreenUtil.scaleWidth(50)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).textLayout),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_buildText(), _buildRichText()],
      ),
    );
  }
}
