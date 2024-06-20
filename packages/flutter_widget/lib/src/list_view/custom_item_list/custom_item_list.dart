import 'package:flutter/material.dart';

import 'notification_item.dart';

class CustomItemList extends StatelessWidget {
  final Widget itemContent;
  const CustomItemList({super.key, required this.itemContent});

  @override
  Widget build(BuildContext context) {
    return itemContent;
  }

  factory CustomItemList.notificationItem({
    bool? unRead = false,
    bool? important = false,
    int? index,
    String? title,
    String? content,
    DateTime? createDate,
    Function? onPress,
    Function(bool? value)? onSelect,
    Function? onLongPress,
    bool? showCheckBox,
    bool? isSelected,
  }) {
    final widget = NotificationItem(
      unRead: unRead ?? false,
      important: important ?? false,
      index: index,
      title: title,
      content: content,
      createDate: createDate,
      onPress: onPress,
      onSelect: onSelect,
      isSelected: isSelected ?? false,
      showCheckBox: showCheckBox ?? false,
    );
    return CustomItemList(itemContent: widget);
  }
}
