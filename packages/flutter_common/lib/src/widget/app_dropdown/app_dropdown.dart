import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';

class AppDropdown extends StatefulWidget {
  final double? width;
  final Color? colorBg;
  final Color? textColor;
  const AppDropdown({super.key, this.width, this.colorBg, this.textColor});

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor ?? context.color.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((String item) =>
                DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
                  color:  widget.colorBg ?? context.color.black,
                ),
                color: widget.colorBg ?? context.color.black,
              ),
              elevation: 2,
            ),
            iconStyleData: IconStyleData(
              icon: SizedBox(width: 14, height:14, child: AppIcon(path: Assets.icons.icArrowDown.path,
              color: widget.textColor,)),
              iconSize: 14,
              iconEnabledColor: context.color.white,
              iconDisabledColor: context.color.white,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: widget.width ?? MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color:  widget.colorBg ?? context.color.black,
              ),
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
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