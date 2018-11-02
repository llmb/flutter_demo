//第三方
import 'package:flutter/material.dart';

//公用类
import '../constant/RouteConst.dart';

//page
import '../../page/base_widget_page.dart';
import '../../page/basic_widget/container.dart';
import '../../page/basic_widget/row_page.dart';

class NavigatorUtils {
  ///基础组件
  static goBasicWidgetPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => BasicWidgetPage(),
        settings: RouteSettings(name: route_basic_widget_page)));
  }

  ///Container详情页
  static goContainerPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => ContainerPage(),
        settings: RouteSettings(name: route_container_page)));
  }

  ///Row详情页
  static goRowPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => RowPage(),
        settings: RouteSettings(name: route_row_page)));
  }
}
