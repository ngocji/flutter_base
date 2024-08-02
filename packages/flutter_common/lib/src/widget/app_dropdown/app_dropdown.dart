import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_widget/flutter_widget.dart';
import '../../../flutter_common.dart';

class AppDropdown extends StatefulWidget {
  final double? width;
  final Color? colorBg;
  final Color? textColor;
  final String? hint;
  final List<String> items;

  const AppDropdown(
      {super.key,
      this.width,
      this.colorBg,
      this.textColor,
      this.hint,
      required this.items});

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  String? selectedValue;

  _AppDropdownState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: widget.hint != null
              ? Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.hint ?? "",
                        // style: GuidelineTextStyle.textMdRegular
                        //     .copyWith(color: context.color.onSurface),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              : null,
          items: widget.items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      // style: context.textStyle.textMdRegular
                      //     .copyWith(color: item == selectedValue ? context.color.primary : context.color.onSurface),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 50,
            width: widget.width ?? MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: widget.colorBg ?? context.color.outline,
              ),
              color: widget.colorBg ?? Colors.transparent,
            ),
            elevation: 2,
          ),
          iconStyleData: IconStyleData(
            icon: SizedBox(
                width: 14,
                height: 14,
                child: AppIcon(
                  path: Assets.icons.icArrowDown.path,
                  color: widget.textColor,
                )),
            iconSize: 14,
            iconEnabledColor: context.color.onSurface,
            iconDisabledColor: context.color.outline,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            width: widget.width ?? MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: widget.colorBg ?? context.color.surfaceContainer,
            ),
            offset: const Offset(-20, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: WidgetStateProperty.all<double>(6),
              thumbVisibility: WidgetStateProperty.all<bool>(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
