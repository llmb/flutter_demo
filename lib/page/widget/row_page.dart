// flutter
import 'package:flutter/material.dart';

// 公用类
import '../../common/util/screen_utils.dart';
import '../../common/localization/strings.dart';

/// Row如果使用DemoPage
class RowPage extends StatefulWidget {
  RowPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).rowLayout),
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
          child: Container(
        color: Colors.green.shade800,
        height: ScreenUtil.scaleHeight(600),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          textDirection: TextDirection.rtl,
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Expanded(
                child: Container(
                  color: Colors.red.shade700,
                  child: Text(
                    '文本Acd',
                    textAlign: TextAlign.center,
                    textScaleFactor: 3.0,
                  ),
                ),
                flex: 0),
            Expanded(
                child: Container(
                  color: Colors.blue.shade700,
                  child: Text('文本B', textAlign: TextAlign.center),
                ),
                flex: 0),
            Expanded(
                child: Container(
                  color: Colors.brown.shade700,
                  child: Text('文本C', textAlign: TextAlign.center),
                ),
                flex: 0),
          ],
        ),
      )),
    );
  }
}
