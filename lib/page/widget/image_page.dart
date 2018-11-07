// dart
import 'dart:io';

// flutter
import 'package:flutter/material.dart';

// 通用类
import '../../widget/button_item.dart';
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

/// Image如果使用DemoPage
class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  final String _url =
      'http://upload-images.jianshu.io/upload_images/3230597-fea5278ed63ab737.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240';

  @override
  _ImagePageState createState() => new _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String _url = 'https://www.zybuluo.com/static/img/logo.png';

  void changeNetWorkImageUrl() {
    setState(() {
      if (_url == widget._url) {
        _url = 'https://www.zybuluo.com/static/img/logo.png';
      } else {
        _url = widget._url;
      }
    });
  }

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
        image = Image.network(
          _url,
          alignment: Alignment.center,
          height: ScreenUtil.scaleHeight(400),
          // gaplessPlayback为true时，如果当前url获取图像失败，则依然显示之前的图像，成功则显示新图像
          // gaplessPlayback为false时，如果当前url获取图像失败，则什么都不显示，成功则显示新图像
          gaplessPlayback: false,
        );
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
        title: Text(Strings.of(context).imageLayout),
      ),
      body: new Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _buildImageItem('这是Assets中的资源', ImageType.asset),
            _buildImageItem('这是网络资源', ImageType.network),
            ButtonItem(
              title: '修改网络图片地址',
              onClick: changeNetWorkImageUrl,
            ),
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
