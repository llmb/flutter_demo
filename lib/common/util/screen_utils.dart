import 'package:flutter/material.dart';

///此方法是单利的，也就是只有第一次调用[ScreenUtil(context)]时会创建对象,
///在此对象未创建之前，请不要调其它任何静态方法，否则会抛空指针异常.
///在创建对象时context也不能为null，否则同样抛异常
class ScreenUtil {
  static ScreenUtil _instance;

  //设计稿的设备尺寸修改
  int _designWidth;
  int _designHeight;

  MediaQueryData _mediaQueryData;
  double _screenWidth;
  double _screenHeight;
  double _pixelRatio;
  double _statusBarHeight;
  double _bottomBarHeight;
  double _textScaleFactor;

  ScreenUtil._init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = _mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
    print("screen width:" + _screenWidth.toString());
    print("screen height:" + _screenHeight.toString());
    print("screen Pixel:" + _pixelRatio.toString());
    print("screen bar height:" + _statusBarHeight.toString());
    print("screen bottom height:" + _bottomBarHeight.toString());
    print("text Scale Factor:" + _textScaleFactor.toString());
  }

  // 工厂模式
  factory ScreenUtil(BuildContext context) => _getInstance(context);

  static ScreenUtil _getInstance(BuildContext context) {
    if (_instance == null) {
      if (context == null) {
        throw Exception("BuildContext could not be null");
      }
      _instance = new ScreenUtil._init(context);
    }
    return _instance;
  }

  void init({int width, int height}) {
    _designWidth = width;
    _designHeight = height;
  }

  static MediaQueryData get mediaQueryData => _instance._mediaQueryData;

  ///每个逻辑像素的字体像素数，字体的缩放比例
  static double get textScaleFactory => _instance._textScaleFactor;

  ///设备的像素密度
  static double get pixelRatio => _instance._pixelRatio;

  ///当前设备宽度 px
  static double get screenWidth =>
      _instance._screenWidth * _instance._pixelRatio;

  ///当前设备高度 px
  static double get screenHeight =>
      _instance._screenHeight * _instance._pixelRatio;

  ///状态栏高度 px 刘海屏会更高
  static double get statusBarHeight =>
      _instance._statusBarHeight * _instance._pixelRatio;

  ///底部安全区距离 px
  static double get bottomBarHeight =>
      _instance._bottomBarHeight * _instance._pixelRatio;

  ///dp 根据设计稿的设备宽度适配
  ///高度也根据这个来做适配可以保证不变形
  static scaleWidth(int width) =>
      width * _instance._screenWidth / _instance._designWidth;

  /// dp 根据设计稿的设备高度适配
  /// 当发现设计稿中的一屏显示的与当前样式效果不符合时,
  /// 或者形状有差异时,高度适配建议使用此方法
  /// 高度适配主要针对想根据设计稿的一屏展示一样的效果
  static scaleHeight(int height) =>
      height * _instance._screenHeight / _instance._designHeight;

  ///字体大小适配方法
  ///@param fontSize 传入设计稿上字体的px ,
  ///@param allowFontScaling 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为true。
  static scaleSp(int fontSize, [allowFontScaling = true]) => allowFontScaling
      ? scaleWidth(fontSize) *
          _instance._textScaleFactor *
          _instance._pixelRatio
      : scaleHeight(fontSize) * _instance._pixelRatio;
}
