import 'package:flutter/material.dart';
import 'package:ottaa_theme/src/widgets/button/base_button.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool? enabled;
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
      onPressed: onPressed,
      text: text,
      trailing: trailing,
      leading: leading,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
