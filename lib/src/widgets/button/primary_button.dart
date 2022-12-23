import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool enabled;
  final Widget? leading;
  final Widget? trailing;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.enabled = true,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onPressed: enabled ? onPressed : null,
      text: text,
      trailing: trailing,
      leading: leading,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        minimumSize: const Size(double.infinity, 48),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
