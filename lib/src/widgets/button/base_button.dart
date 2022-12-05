import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;
  final bool? enabled;
  final Widget? leading;
  final Widget? trailing;
  final ButtonStyle style;

  const BaseButton({
    super.key,
    required this.onPressed,
    required this.style,
    this.text,
    this.child,
    this.enabled = true,
    this.leading,
    this.trailing,
  }) : assert(text != null || child != null, 'text or child must be provided');

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: leading ?? const SizedBox.shrink(),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: child ?? Text(text!, textAlign: TextAlign.center,),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: trailing ?? const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
