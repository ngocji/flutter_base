import 'package:flutter/services.dart';
import 'package:flutter_widget/flutter_widget.dart';

import 'app_input_decoration.dart';

class AppInputField extends StatefulWidget {
  final Key? inputFieldKey;
  final String title;
  final String? hint;
  final Widget? prefix;
  final String? prefixIcon;
  final Widget? suffix;
  final String? suffixIcon;
  final Widget? errorWidget;
  final String? errorMessage;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final BoxDecoration? borderDecoration;
  final InputDecoration? inputDecoration;
  final TextStyle? titleStyle;
  final TextStyle? textInputStyle;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLines;
  final double widthInputField;
  final double heightInputField;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final bool hiddenTitle;
  final EdgeInsetsGeometry? padding;
  final TextCapitalization textCapitalization;
  final bool required;
  final Widget? clearIcon;

  const AppInputField({
    Key? key,
    this.inputFieldKey,
    required this.title,
    this.hint,
    this.widthInputField = double.infinity,
    this.heightInputField = 48,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.focusNode,
    this.onTap,
    this.onFieldSubmitted,
    this.onSaved,
    this.onChanged,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.errorWidget,
    this.errorMessage,
    this.readOnly = false,
    this.enabled = true,
    this.obscureText = false,
    this.borderDecoration,
    this.inputDecoration,
    this.titleStyle,
    this.textInputStyle,
    this.hintStyle,
    this.maxLines = 1,
    this.padding,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.hiddenTitle = false,
    this.required = false,
    this.clearIcon,
  }) : super(key: key);

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  final ValueNotifier<bool> _hasFocus = ValueNotifier(false);
  final ValueNotifier<String> _value = ValueNotifier('');

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _value.value = _controller.text;
    _controller.addListener(() {
      _value.value = _controller.text;
    });
    _focusNode = widget.focusNode ?? FocusNode();
    _hasFocus.value = _focusNode.hasFocus;
    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });
  }

  bool get _isError =>
      widget.errorWidget != null || widget.errorMessage?.isNotEmpty == true;

  bool get _hasValue => _controller.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: _hasFocus,
          builder: (context, hasFocus, child) {
            return GestureDetector(
              onTap: () => {
                _focusNode.requestFocus(),
                widget.onTap?.call(),
              },
              child: Container(
                decoration: _buildBorderDecoration(context, hasFocus),
                width: widget.widthInputField,
                height: widget.heightInputField,
                child: child,
              ),
            );
          },
          child: Padding(
            padding: widget.padding ?? const EdgeInsets.fromLTRB(12, 4, 12, 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildWidgetLeft(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitle(context),
                      Center(child: _buildInputField(context)),
                    ],
                  ),
                ),
                _buildWidgetRight(),
              ],
            ),
          ),
        ),
        _buildError(context),
      ],
    );
  }

  Decoration _buildBorderDecoration(BuildContext context, bool hasFocus) {
    if (widget.borderDecoration != null) {
      return widget.borderDecoration!;
    }

    return AppInputDecoration.defaultInputDecoration(context,
        error: _isError, hasFocus: hasFocus, disabled: widget.readOnly);
  }

  Widget _buildTitle(BuildContext context) {
    if (widget.hiddenTitle) {
      return const SizedBox();
    }

    return ValueListenableBuilder(
      valueListenable: _hasFocus,
      builder: (context, hasFocus, _) {
        if (hasFocus || _hasValue) {
          TextStyle style = context.textStyle.textXsRegular.copyWith(
            color: context.color.onSurface,
          );

          TextStyle? requireTextStyle = widget.required
              ? context.textStyle.textXsBold.copyWith(
                  color: context.color.error,
                )
              : null;

          return RichText(
            text: TextSpan(
              text: widget.title,
              style: style,
              children: [
                if (widget.required)
                  TextSpan(text: ' *', style: requireTextStyle),
              ],
            ),
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildInputField(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _hasFocus,
        builder: (context, hasFocus, _) {
          return SizedBox(
            height: 20,
            child: TextFormField(
              key: widget.inputFieldKey,
              controller: _controller,
              readOnly: widget.readOnly,
              enabled: widget.enabled,
              obscureText: widget.obscureText,
              obscuringCharacter: "*",
              maxLines: widget.maxLines,
              decoration: _buildInputDecoration(context),
              style: widget.textInputStyle ??
                  context.textStyle.textSmallSemiBold.copyWith(
                    color: widget.readOnly
                        ? context.color.onSurface
                        : context.color.onSurface,
                  ),
              keyboardType: widget.keyboardType,
              onFieldSubmitted: widget.onFieldSubmitted,
              onSaved: widget.onSaved,
              onTap: widget.onTap,
              focusNode: _focusNode,
              onChanged: widget.onChanged,
              inputFormatters: widget.inputFormatters,
              textCapitalization: widget.textCapitalization,
              cursorHeight: 16,
            ),
          );
        });
  }

  InputDecoration _buildInputDecoration(BuildContext context) {
    if (widget.inputDecoration != null) {
      return widget.inputDecoration!;
    }

    String hint = widget.title;
    TextStyle hintStyle = context.textStyle.textSmallRegular.copyWith(
      color: context.color.onSurface,
    );
    if (_focusNode.hasFocus || _hasValue) {
      hint = widget.hint ?? widget.title;
      hintStyle = widget.hintStyle ??
          context.textStyle.textSmallSemiBold.copyWith(
            color: context.color.onSurface,
          );
    }

    return InputDecoration(
      border: InputBorder.none,
      hintText: hint,
      hintStyle: hintStyle,
      contentPadding: EdgeInsets.zero,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isCollapsed: true,
    );
  }

  Widget _buildWidgetLeft() {
    if (widget.prefix != null) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: widget.prefix,
      );
    }

    if (widget.prefixIcon != null && widget.prefixIcon!.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: AppIcon.icon20(
          path: widget.prefixIcon!,
          color: context.color.primaryFixed,
        ),
      );
    }

    return const SizedBox();
  }

  Widget _buildWidgetRight() {
    Widget? suffix;
    if (widget.suffix != null) {
      suffix = widget.suffix;
    } else if (widget.suffixIcon != null && widget.suffixIcon!.isNotEmpty) {
      suffix = AppIcon.icon20(
        path: widget.suffixIcon!,
        color: context.color.primaryFixed,
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.clearIcon != null)
          ValueListenableBuilder(
              valueListenable: _hasFocus,
              builder: (context, hasFocus, _) {
                return ValueListenableBuilder(
                    valueListenable: _value,
                    builder: (context, value, _) {
                      if (!hasFocus || value.isEmpty) {
                        return const SizedBox();
                      }

                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          onTap: () {
                            _controller.clear();
                            widget.onChanged?.call('');
                          },
                          child: widget.clearIcon!,
                        ),
                      );
                    });
              }),
        if (suffix != null)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: suffix,
          ),
      ],
    );
  }

  Widget _buildError(BuildContext context) {
    if (widget.errorWidget != null) {
      return widget.errorWidget!;
    }

    if (widget.errorMessage != null && widget.errorMessage!.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(12, 4, 12, 0),
        child: Text(
          widget.errorMessage!,
          style: context.textStyle.textXsMedium.copyWith(
            color: context.color.error,
          ),
        ),
      );
    }

    return const SizedBox();
  }
}
