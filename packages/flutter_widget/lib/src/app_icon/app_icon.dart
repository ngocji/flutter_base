import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget/flutter_widget.dart';

import 'asset_icon.dart';

class AppIcon extends StatelessWidget {
  final dynamic path;
  final String? package;
  final double? width;
  final double? height;
  final Color? color;

  const AppIcon(
      {Key? key,
      required this.path,
      this.package,
      this.width,
      this.height,
      this.color})
      : super(key: key);

  Widget _buildImagePath(dynamic path, String? package) {
    return path is String
        ? path.contains('.png')
            ? Image.asset(
                path,
                package: package,
                width: width,
                height: height,
                fit: BoxFit.fitWidth,
                color: color,
              )
            : SvgPicture.asset(
                path,
                width: width,
                height: height,
                colorFilter: color == null
                    ? null
                    : ColorFilter.mode(color!, BlendMode.srcIn),
                package: package,
                theme: SvgTheme(currentColor: color ?? const Color(0xFF000000)),
              )
        : const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return path is IconData
        ? Icon(path, size: width, color: color)
        : path is AssetIcon
            ? _buildImagePath((path as AssetIcon).path, (path as AssetIcon).package)
            : _buildImagePath(path, package);
  }

  factory AppIcon.iconInfinity({required dynamic path, Color? color}) =>
      AppIcon(
        path: path,
        width: double.infinity,
        height: double.infinity,
        color: color,
      );

  factory AppIcon.icon10({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 10,
        height: 10,
        color: color,
      );

  factory AppIcon.icon16({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 16,
        height: 16,
        color: color,
      );

  factory AppIcon.icon20({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 20,
        height: 20,
        color: color,
      );

  factory AppIcon.icon24({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 24,
        height: 24,
        color: color,
      );

  factory AppIcon.icon32({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 32,
        height: 32,
        color: color,
      );

  factory AppIcon.icon40({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 40,
        height: 40,
        color: color,
      );

  factory AppIcon.icon44({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 44,
        height: 44,
        color: color,
      );

  factory AppIcon.icon48({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 48,
        height: 48,
        color: color,
      );

  factory AppIcon.icon56({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 56,
        height: 56,
        color: color,
      );

  factory AppIcon.icon64({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 64,
        height: 64,
        color: color,
      );

  factory AppIcon.icon80({required String path, Color? color}) => AppIcon(
        path: path,
        width: 80,
        height: 80,
        color: color,
      );

  factory AppIcon.icon120({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 120,
        height: 120,
        color: color,
      );

  factory AppIcon.icon57({required dynamic path, Color? color}) => AppIcon(
        path: path,
        width: 57,
        height: 57,
        color: color,
      );
}
