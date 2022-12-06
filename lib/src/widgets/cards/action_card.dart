import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final String subtitle;
  final ImageProvider? trailingImage;
  final bool focused;
  final Size imageSize;

  const ActionCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.onPressed,
    this.focused = false,
    this.imageSize = const Size(100, 100),
    this.trailingImage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 96)),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return theme.cardTheme.color;
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          BorderSide side = focused
              ? BorderSide(
                  color: colorScheme.primary,
                  width: 3,
                )
              : BorderSide.none;
          return RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            side: side,
          );
        }),
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
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: SizedBox.fromSize(
          size: const Size(double.infinity, 96),
          child: Stack(
            children: [
              if (trailingImage != null)
                Positioned(
                  right: 0,
                  top: 7,
                  child: Image(
                    image: trailingImage!,
                    width: imageSize.width,
                    height: imageSize.height,
                    fit: BoxFit.fill,
                  ),
                ),
              Positioned(
                top: 16,
                left: 16,
                right: 0,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.subtitle2,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
