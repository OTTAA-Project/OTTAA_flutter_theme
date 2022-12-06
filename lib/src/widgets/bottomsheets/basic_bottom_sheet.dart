import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class BasicBottomSheet<T> extends StatelessWidget {
  final String? title;
  final String? subtitle;

  final List<Widget>? children;

  final Color backgroundColor;

  final bool okButtonEnabled;
  final String? okButtonText;

  final bool cancelButtonEnabled;
  final String? cancelButtonText;

  const BasicBottomSheet({
    super.key,
    this.title,
    this.subtitle,
    this.children,
    this.okButtonEnabled = true,
    this.okButtonText,
    this.cancelButtonEnabled = false,
    this.cancelButtonText,
    this.backgroundColor = kBackgroundColor,
  })  : assert(okButtonEnabled || cancelButtonEnabled, 'At least one button must be enabled'),
        assert(title != null || subtitle != null || children != null, 'title or subtitle must be provided or children must be provided');

  static Future<T?> show<T>(
    BuildContext context, {
    String? title,
    String? subtitle,
    List<Widget>? children,
    bool okButtonEnabled = true,
    String? okButtonText,
    bool cancelButtonEnabled = false,
    String? cancelButtonText,
    Color backgroundColor = kBackgroundColor,
  }) {
    assert(okButtonEnabled || cancelButtonEnabled, 'At least one button must be enabled');
    assert(title != null || subtitle != null || children != null, 'title or subtitle must be provided or children must be provided');

    final size = MediaQuery.of(context).size;

    double minWidth = size.width * 0.88;

    if(minWidth > 1000){
      minWidth /= 2;
    }

    return showModalBottomSheet<T>(
      context: context,
      constraints: BoxConstraints(
        minWidth: size.width / 3,
        maxWidth: minWidth,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => BasicBottomSheet<T>(
        title: title,
        subtitle: subtitle,
        okButtonEnabled: okButtonEnabled,
        okButtonText: okButtonText,
        cancelButtonEnabled: cancelButtonEnabled,
        cancelButtonText: cancelButtonText,
        backgroundColor: backgroundColor,
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 24,
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (title != null) Text(title!, textAlign: TextAlign.center, style: textTheme.headline1!),
                  if (subtitle != null) Text(subtitle!, textAlign: TextAlign.center, style: textTheme.bodyText2!),
                  if (children != null) ...children!,
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (cancelButtonEnabled)
                    Flexible(
                      flex: 2,
                      fit: FlexFit.loose,
                      child: SecondaryButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        text: cancelButtonText ?? 'Cancel',
                      ),
                    ),
                  if (cancelButtonEnabled && okButtonEnabled) const SizedBox(width: 16),
                  if (okButtonEnabled)
                    Flexible(
                      flex: 2,
                      fit: FlexFit.loose,
                      child: PrimaryButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        text: okButtonText ?? 'Ok',
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            )
          ],
        ),
      ),
    );
  }
}
