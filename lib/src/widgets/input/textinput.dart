import 'package:flutter/material.dart';

import 'package:ottaa_theme/theme.dart';


class OTTAATextInput extends StatefulWidget {
  final String? hintText;

  final String? labelText;

  final TextEditingController? controller;

  final bool isPassword;

  final void Function(String)? onChanged;

  final String? Function(String?)? validator;

  final void Function()? onTap;

  final bool isReadOnly;

  final bool? enabled;

  final TextInputType? keyboardType;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const OTTAATextInput({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.isPassword = false,
    this.onChanged,
    this.validator,
    this.onTap,
    this.isReadOnly = false,
    this.enabled = true,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<OTTAATextInput> createState() => _OTTAATextInputState();
}

class _OTTAATextInputState extends State<OTTAATextInput> {
  bool visiblePassword = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      cursorColor: colorScheme.primary,
      validator: widget.validator,
      readOnly: widget.isReadOnly,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? visiblePassword : false,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    visiblePassword = !visiblePassword;
                  });
                },
                child: Icon(
                  visiblePassword ? Icons.lock : Icons.lock_open,
                ),
              )
            : widget.suffixIcon,
        contentPadding: const EdgeInsets.only(left: 10, top: 10),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kDarkGrayColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.secondary, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(14.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(14.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kDarkGrayColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        labelText: widget.labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
