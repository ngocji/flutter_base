extension StringExtension on String? {
  bool get isNullOrEmpty => this == null || this == '';

  String get orEmpty => this ?? '';

  bool get isValidEmail {
    final regex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(this ?? '');
  }
}
