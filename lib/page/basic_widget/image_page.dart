//第三方
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';

//通用类
import '../../common/localization/strings.dart';
import '../../common/util/screen_utils.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  @override
  _ImagePageState createState() => new _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  Widget _buildImageItem(String title, ImageType imageType) {
    Image image;
    switch (imageType) {
      case ImageType.asset:
        image = Image.asset(
          'images/flutter.png',
          alignment: Alignment.center,
          height: ScreenUtil.scaleHeight(400),
        );
        break;

      case ImageType.file:
        image = Image.file(
          File('/storage/081D-0E1A/Android/media/file.png'),
          alignment: Alignment.center,
          height: ScreenUtil.scaleHeight(400),
        );
        break;

      case ImageType.network:
        image = Image.network('https://www.zybuluo.com/static/img/logo.png',
            alignment: Alignment.center, height: ScreenUtil.scaleHeight(400));
        break;

      case ImageType.memory:
        image = Image.memory(
            File('/storage/081D-0E1A/Android/media/file.png').readAsBytesSync(),
            alignment: Alignment.center,
            height: ScreenUtil.scaleHeight(400));
        break;

      default:
        image = Image.asset('flutter.png',
            alignment: Alignment.center, height: ScreenUtil.scaleHeight(400));
        break;
    }

    return Container(
      color: Colors.blue,
      margin: EdgeInsets.all(ScreenUtil.scaleWidth(20)),
      padding: EdgeInsets.all(ScreenUtil.scaleWidth(20)),
      width: ScreenUtil.scaleWidth(ScreenUtil.screenWidth),
      child: Column(
        children: <Widget>[image, Text(title, textAlign: TextAlign.center)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).image),
      ),
      body: new Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _buildImageItem('这是Assets中的资源', ImageType.asset),
            _buildImageItem('这是网络资源', ImageType.network),
//            _buildImageItem('这是本地文件', ImageType.file),
//            _buildImageItem('这是二进制文件', ImageType.memory),
          ],
        ),
      ),
    );
  }
}

///图片来源类型
enum ImageType { asset, network, file, memory }
