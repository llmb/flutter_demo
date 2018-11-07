// flutter
import 'package:flutter/material.dart';

// 公用类
import '../constant/RouteConst.dart';

// page
import '../../page/widget_home_page.dart';
import '../../page/widget/container.dart';
import '../../page/widget/row_page.dart';
import '../../page/widget/column_page.dart';
import '../../page/widget/image_page.dart';
import '../../page/widget/text_page.dart';

/// 路由工具类
class NavigatorUtils {
  /// 组件HomePage
  static goBasicWidgetPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => BasicWidgetPage(),
        settings: RouteSettings(name: route_basic_widget_page)));
  }

  /// Container详情页
  static goContainerPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => ContainerPage(),
        settings: RouteSettings(name: route_container_page)));
  }

  /// Row详情页
  static goRowPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => RowPage(),
        settings: RouteSettings(name: route_row_page)));
  }

  /// Column详情页
  static goColumnPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => new ColumnPage(),
        settings: RouteSettings(name: route_column_page)));
  }

  /// Image详情页
  static goImagePage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => new ImagePage(),
        settings: RouteSettings(name: route_image_page)));
  }

  /// Text详情页
  static goTextPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => new TextPage(),
        settings: RouteSettings(name: route_text_page)));
  }
}
