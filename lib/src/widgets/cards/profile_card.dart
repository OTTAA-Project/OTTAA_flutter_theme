import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final ImageProvider leadingImage;
  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final Widget? actions;

  const ProfileCard({
    super.key,
    required this.title,
    required this.leadingImage,
    this.onPressed,
    this.subtitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(double.infinity, 96)),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return theme.cardTheme.color;
        }),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        )),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        elevation: MaterialStateProperty.all(0),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (onPressed == null) {
            return null;
          }
          return colorScheme.primary.withOpacity(0.2);
        }),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            width: 28,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              color: colorScheme.primary,
            ),
          ),
          Image(
            image: leadingImage,
            height: 96,
            fit: BoxFit.fitHeight,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Flex(
                direction: Axis.vertical,
                clipBehavior: Clip.none,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      title,
                      style: textTheme.subtitle2,
                    ),
                  ),
                  if (subtitle != null)
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        subtitle!,
                        style: textTheme.subtitle1,
                      ),
                    ),
                  if (actions != null)
                    Flexible(
                      fit: FlexFit.loose,
                      child: actions!,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
