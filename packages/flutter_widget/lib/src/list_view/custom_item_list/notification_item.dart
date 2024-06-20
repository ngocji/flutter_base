import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/src/theme/app_theme.dart';
import 'package:flutter_widget/src/theme/guideline_colors.dart';

class NotificationItem extends StatefulWidget {
  final bool unRead;
  final bool important;
  final int? index;
  final String? title;
  final String? content;
  final DateTime? createDate;
  final Function? onPress;
  final bool showCheckBox;
  final bool isSelected;
  final Function(bool? value)? onSelect;

  const NotificationItem({
    super.key,
    this.unRead = false,
    this.important = false,
    this.index,
    this.title,
    this.content,
    this.createDate,
    this.onPress,
    this.onSelect,
    this.showCheckBox = false,
    this.isSelected = false,
  });

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    final double borderWidth = widget.unRead ? 1 : 0;

    return GestureDetector(
      onTap: _onPress,
      child: Container(
        padding:
            const EdgeInsets.only(top: 14, left: 16, right: 16, bottom: 16),
        decoration: BoxDecoration(
          color: context.color.white,
          border: Border.all(
            width: borderWidth,
            color: context.color.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    ...widget.important
                        ? [
                            const Icon(
                              Icons.warning_amber_rounded,
                              color: SupportColors.red,
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ]
                        : [],
                    Expanded(
                      child: Text(
                        widget.content ?? '',
                        style: context.textStyle.textMdBold.copyWith(
                          fontWeight:
                              widget.unRead ? FontWeight.w700 : FontWeight.w400,
                          color: SupportColors.textDarkGray,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      widget.createDate != null
                          ? DateFormat("yyyy/MM/dd").format(widget.createDate!)
                          : "",
                      style: context.textStyle.textXsRegular.copyWith(
                        color: SupportColors.textLightGray,
                      ),
                    )
                  ],
                ),
                Text(
                  widget.content ?? '',
                  style: context.textStyle.textSmallRegular.copyWith(
                    color: SupportColors.textLightGray,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
            ...widget.showCheckBox
                ? [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(left: 16),
                      child: Checkbox(
                        value: widget.isSelected,
                        onChanged: _onChangeSelectItem,
                        activeColor: context.color.primaryColor,
                        checkColor: context.color.white,
                      ),
                    ),
                  ]
                : [],
          ],
        ),
      ),
    );
  }

  _onPress() {
    widget.onPress != null ? widget.onPress!() : null;
  }

  _onChangeSelectItem(bool? value) {
    if (widget.onSelect != null) {
      widget.onSelect!(value);
    }
  }
}
