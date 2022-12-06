import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';

class OTTAADropdown<T> extends StatelessWidget {
  final T selected;
  final Function(T?)? onChanged;
  final List<T> items;
  final Widget Function(T) label;

  const OTTAADropdown({
    Key? key,
    required this.selected,
    required this.onChanged,
    required this.items,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: Border.all(color: kDarkGrayColor, width: 2),
        color: Colors.white,
      ),
      child: DropdownButton<T>(
        value: selected,
        iconSize: 24,
        elevation: 16,
        isExpanded: true,
        underline: const SizedBox.shrink(),
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        onChanged: onChanged,
        alignment: Alignment.center,
        items: items.map<DropdownMenuItem<T>>((T item) {
          return DropdownMenuItem<T>(
            value: item,
            alignment: Alignment.center,
            child: label(item),
          );
        }).toList(),
      ),
    );
  }
}
