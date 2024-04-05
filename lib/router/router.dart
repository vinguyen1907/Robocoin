import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Routes {
  static String get root => "/";
  static String get chooseLoginMethod => "/choose-login-method";

  static Route? routes(RouteSettings settings) {
    Widget widget;
    if (settings.name == root) {
      return null;
    }

    try {
      widget = GetIt.I.get<Widget>(instanceName: settings.name);
    } catch (e) {
      widget = const Scaffold(
        body: Center(child: Text("404 NOT FOUND")),
      );
    }
    return MaterialPageRoute(builder: (_) => widget, settings: settings);
  }
}
