import 'package:flutter/services.dart';

class InputPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (newText.isEmpty) {
      return newValue;
    } else if (!newText.startsWith('0')) {
      final updateText = '0$newText';
      return TextEditingValue(
          text: updateText,
          selection: TextSelection.collapsed(offset: updateText.length));
    }

    return newValue;
  }
}
