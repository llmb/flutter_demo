import 'package:flutter/material.dart';

import '../../common/util/screen_utils.dart';

class ContainerPage extends StatefulWidget {
  static const String _title = "Container";

  @override
  State<StatefulWidget> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ContainerPage._title),
      ),
      body: Center(
        child: new Container(
          color: Colors.blueAccent,
          width: ScreenUtil.scaleWidth(200),
          height: ScreenUtil.scaleHeight(200),
        ),
      ),
    );
  }
}
