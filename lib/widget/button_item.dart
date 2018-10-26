import 'package:flutter/material.dart';

import '../common/util/screen_utils.dart';

class ButtonItem extends StatefulWidget {
  ButtonItem({Key key, this.title, this.onClick}) : super(key: key);

  final VoidCallback onClick;
  final String title;

  @override
  _ButtonItemState createState() => _ButtonItemState();
}

class _ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.scaleHeight(100),
      margin: EdgeInsets.only(
          left: ScreenUtil.scaleWidth(20),
          right: ScreenUtil.scaleWidth(20),
          top: ScreenUtil.scaleHeight(10),
          bottom: ScreenUtil.scaleHeight(10)),
      child: RaisedButton(
          onPressed: widget.onClick,
          color: Colors.white,
          highlightColor: Colors.white70,
          textColor: Colors.black87,
          elevation: ScreenUtil.scaleHeight(5),
          highlightElevation: ScreenUtil.scaleHeight(15),
          child: Center(
            child: Text(
              widget.title,
            ),
          )),
    );
  }
}
