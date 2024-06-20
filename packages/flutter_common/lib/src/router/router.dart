import 'package:flutter_widget/flutter_widget.dart';

import 'navigator_util.dart';
import 'page_not_found.dart';

class DefaultRoute {
  static const String routeNotFound = '/not_found';

  static Route<dynamic> notFound(RouteSettings settings) {
    return getPageRoute(
        const PageNotFoundScreen(), const RouteSettings(name: routeNotFound));
  }
}
