// dart
import 'dart:math' as math;

// flutter
import 'package:flutter/material.dart';

// 公用类
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

/// Container如果使用DemoPage
class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).containerLayout),
      ),
      body: Center(
        //heightFactor和widthFactor如果不指定，则它会尽可能大，
        //以让child能够在可用区间内居中
        //如果指定，则Center的宽就是child 的宽 * widthFactor
        //Center的高就是child 的高 * heightFactor
        //heightFactor: 4,
        //widthFactor: 3,
        //当Text文本横向能够完全绘制出来时，即使纵向高度不够，
        // 文本也会被完全绘制出来，高度不会出现裁剪，
        // 只有当横向不能够完全绘制出来时，纵向高度不够时才会被裁剪，猜测是Bug!
        child: new Container(
            //约束宽高
            width: ScreenUtil.scaleWidth(600),
            height: ScreenUtil.scaleHeight(300),
            //约束宽高最大值和最小值，如果width和height值不在此约束值范围之间，则无效
            constraints: BoxConstraints.loose(
                Size(double.infinity, ScreenUtil.scaleHeight(800))),
            alignment: Alignment.center,
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.red),
              maxLines: 1,
              locale: Locale('cn', 'zh'),
              //展示不下时省略模式
              overflow: TextOverflow.ellipsis,
            ),
            //背景样式，指定这个就不能指定color，反之亦然
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage('https://www.zybuluo.com/static/img/logo.png'),
                centerSlice: Rect.fromLTRB(0.0, 0.0, 600.0, 600.0),
              ),
            ),
            foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(ScreenUtil.scaleWidth(20))),
                border: Border.all(
                    width: ScreenUtil.scaleWidth(2),
                    color: Colors.red.shade700,
                    style: BorderStyle.solid)),
            //变换，缩放、旋转、平移
            transform: Matrix4.rotationZ(-math.pi / 4)),
      ),
    );
  }
}
