import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';
import 'package:ottaa_ui_kit/theme.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool enabled;
  final Widget? leading;
  final Widget? trailing;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.enabled = true,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BaseButton(
      onPressed: enabled ? onPressed : null,
      text: text,
      trailing: trailing,
      leading: leading,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.onSurface.withOpacity(0.12);
          }
          return kWhiteColor;
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          BorderSide side = states.contains(MaterialState.disabled)
              ? BorderSide.none
              : BorderSide(
                  color: colorScheme.primary,
                );
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: side,
          );
        }),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return colorScheme.onSurface.withOpacity(0.38);
          }
          return colorScheme.primary;
        }),
        overlayColor: MaterialStateProperty.all(colorScheme.primary.withOpacity(0.2)),
      ),
    );
  }
}
