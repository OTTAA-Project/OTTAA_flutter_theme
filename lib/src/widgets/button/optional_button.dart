import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';

class OptionalButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool? enabled;
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
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: Colors.white,
        foregroundColor: kPrimaryTextColor,
        elevation: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
