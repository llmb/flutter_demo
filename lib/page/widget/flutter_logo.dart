// flutter
import 'package:flutter/material.dart';

// 公用类
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

// widget
import '../../widget/button_item.dart';

class FlutterLogoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  double _size = ScreenUtil.scaleWidth(300);
  MaterialColor _color = Colors.red;
  Color _textColor = Colors.black;
  Duration _duration = Duration(milliseconds: 1000);
  FlutterLogoStyle _style = FlutterLogoStyle.markOnly;
  Curve _curve = Curves.fastOutSlowIn;

  void _changeSize() {
    setState(() {
      if (_size == ScreenUtil.scaleWidth(300)) {
        _size = ScreenUtil.scaleWidth(200);
      } else {
        _size = ScreenUtil.scaleWidth(300);
      }
    });
  }

  void _changeColor() {
    setState(() {
      if (_color == Colors.red) {
        _color = Colors.blue;
      } else {
        _color = Colors.red;
      }
    });
  }

  void _changeTextColor() {
    setState(() {
      if (_textColor == Colors.black) {
        _textColor = Colors.black38;
      } else {
        _textColor = Colors.black;
      }
    });
  }

  void _changeDuration() {
    setState(() {
      if (_duration.inMilliseconds == 500) {
        _duration += Duration(milliseconds: 1000);
      } else {
        _duration -= Duration(milliseconds: 1000);
      }

      if (_style == FlutterLogoStyle.markOnly) {
        _style = FlutterLogoStyle.horizontal;
      } else if (_style == FlutterLogoStyle.horizontal) {
        _style = FlutterLogoStyle.stacked;
      } else {
        _style = FlutterLogoStyle.markOnly;
      }
    });
  }

  void _changeStyle() {
    setState(() {
      if (_style == FlutterLogoStyle.markOnly) {
        _style = FlutterLogoStyle.horizontal;
      } else if (_style == FlutterLogoStyle.horizontal) {
        _style = FlutterLogoStyle.stacked;
      } else {
        _style = FlutterLogoStyle.markOnly;
      }
    });
  }

  void _changeAnim() {
    setState(() {
      if (_curve == Curves.fastOutSlowIn) {
        _curve = Curves.easeInOut;
      } else if (_curve == Curves.easeInOut) {
        _curve = Curves.bounceInOut;
      } else {
        _curve = Curves.fastOutSlowIn;
      }

      if (_style == FlutterLogoStyle.markOnly) {
        _style = FlutterLogoStyle.horizontal;
      } else if (_style == FlutterLogoStyle.horizontal) {
        _style = FlutterLogoStyle.stacked;
      } else {
        _style = FlutterLogoStyle.markOnly;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).flutterLogoLayout),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
            child: ButtonItem(
              title: '点击改变颜色',
              onClick: _changeColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
            child: ButtonItem(
              title: '点击改变Style',
              onClick: _changeStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
            child: ButtonItem(
              title: '点击改变动画样式',
              onClick: _changeAnim,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
            child: ButtonItem(
              title: '点击改变动大小',
              onClick: _changeSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil.scaleWidth(30)),
            child: ButtonItem(
              title: '点击改变动文字颜色',
              onClick: _changeTextColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenUtil.scaleWidth(30),
                right: ScreenUtil.scaleWidth(30),
                top: ScreenUtil.scaleHeight(30),
                bottom: ScreenUtil.scaleHeight(50)),
            child: ButtonItem(
              title: '点击改变动画时间',
              onClick: _changeDuration,
            ),
          ),
          FlutterLogo(
              size: _size,
              colors: _color,
              textColor: _textColor,
              style: _style,
              duration: _duration,
              curve: _curve)
        ],
      ),
    );
  }
}
