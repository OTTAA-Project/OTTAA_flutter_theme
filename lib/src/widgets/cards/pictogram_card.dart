import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

typedef VoidChangeCallback = void Function(bool status);

class PictogramCard extends StatelessWidget {
  final ImageProvider pictogram;
  final String title;
  final String actionText;
  final bool? status;
  final VoidChangeCallback? onChange;
  final VoidCallback? onPressed;

  const PictogramCard({
    super.key,
    required this.title,
    required this.actionText,
    required this.pictogram,
    this.onPressed,
    this.status,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return GestureDetector(
      onTap: status != null && !status! ? null : onPressed,
      child: Container(
        width: double.infinity,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: status != null && !status! ? colorScheme.onSurface : colorScheme.surface,
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image(
                image: pictogram,
                height: 96,
                fit: BoxFit.fitHeight,
                opacity: AlwaysStoppedAnimation(status != null && !status! ? 0.5 : 1),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
                child: Flex(
                  direction: Axis.vertical,
                  clipBehavior: Clip.none,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: textTheme.bodyText2,
                          ),
                          if (status != null)
                            OTTAASwitch(
                              value: status!,
                              onChanged: onChange,
                            ),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            actionText,
                            style: textTheme.subtitle1,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: colorScheme.onSurface,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
