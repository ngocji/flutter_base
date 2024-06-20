import 'package:flutter/material.dart';

typedef GenerateRoute = Route<dynamic> Function(RouteSettings settings);

Route<dynamic> getAuthenticateGuardRoute(
    Widget widget, RouteSettings settings) {
  return _authenticateGuardRoute(getPageRoute(widget, settings), settings);
}

Route<dynamic> getPageRoute(Widget widget, RouteSettings settings) {
  return MaterialPageRoute(builder: (_) => widget, settings: settings);
}

Route<dynamic> _authenticateGuardRoute(Route nextRoute, RouteSettings settings) {
  // TODO check login
  bool isLogin = 1 < 2;
  if (!isLogin) {
    // TODO return login page route
    return nextRoute;
  } else {
    return nextRoute;
  }
}
