import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTTAASwitch extends StatelessWidget {
  final bool value;
  final Function(bool)? onChanged;

  const OTTAASwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
      activeColor: colorScheme.primary,

    );
  }
}
