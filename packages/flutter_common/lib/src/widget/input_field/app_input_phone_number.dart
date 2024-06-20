import 'package:flutter/services.dart';
import 'package:flutter_common/src/widget/input_field/clear_icon.dart';
import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';
import 'formatter/input_phone_formatter.dart';

class AppInputPhoneNumber extends StatelessWidget {
  final Key? inputFieldKey;
  final String title;
  final String? hint;
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
  final double widthInputField;
  final double heightInputField;
  final bool readOnly;
  final bool enabled;
  final bool hiddenTitle;
  final EdgeInsetsGeometry? padding;
  final TextCapitalization textCapitalization;
  final bool required;

  const AppInputPhoneNumber({
    super.key,
    this.inputFieldKey,
    required this.title,
    this.hint,
    this.errorWidget,
    this.errorMessage,
    this.keyboardType = TextInputType.phone,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.borderDecoration,
    this.inputDecoration,
    this.titleStyle,
    this.textInputStyle,
    this.hintStyle,
    this.inputFormatters,
    this.widthInputField = double.infinity,
    this.heightInputField = 48,
    this.readOnly = false,
    this.enabled = true,
    this.hiddenTitle = false,
    this.padding,
    this.textCapitalization = TextCapitalization.none,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppInputField(
      inputFieldKey: inputFieldKey,
      title: title,
      hint: hint,
      // prefixIcon: Assets.icons.icPhoneNumber.path,
      errorWidget: errorWidget,
      errorMessage: errorMessage,
      keyboardType: keyboardType,
      controller: controller,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      borderDecoration: borderDecoration,
      inputDecoration: inputDecoration,
      titleStyle: titleStyle,
      textInputStyle: textInputStyle,
      hintStyle: hintStyle,
      inputFormatters: inputFormatters ??
          [
            FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$')),
            InputPhoneFormatter(),
            LengthLimitingTextInputFormatter(10),
          ],
      maxLines: 1,
      widthInputField: widthInputField,
      heightInputField: heightInputField,
      obscureText: false,
      readOnly: readOnly,
      enabled: enabled,
      hiddenTitle: hiddenTitle,
      padding: padding,
      textCapitalization: textCapitalization,
      required: required,
      clearIcon: const ClearIcon(),
    );
  }
}
