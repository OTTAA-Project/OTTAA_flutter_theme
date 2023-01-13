import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';

class OptionalButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool enabled;
  final Widget? leading;
  final Widget? trailing;

  const OptionalButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.enabled = true,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: Colors.white,
        foregroundColor: kPrimaryTextColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
      child: Row(
        mainAxisAlignment: (leading != null || trailing != null) ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: leading ?? const SizedBox(),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 2,
            child: Text(text),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: trailing ?? const SizedBox(),
          )
        ],
      ),
    );
  }
}
