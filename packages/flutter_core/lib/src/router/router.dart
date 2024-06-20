
import 'package:flutter/material.dart';
import 'package:flutter_core/src/router/page_not_found.dart';

import 'navigator_util.dart';

class DefaultRoute {
  static const String routeNotFound = '/not_found';

  static Route<dynamic> notFound(RouteSettings settings) {
    return getPageRoute(
        const PageNotFoundScreen(), const RouteSettings(name: routeNotFound));
  }
}
