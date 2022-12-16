import 'package:flutter/material.dart';

class OTTAAAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OTTAAAppBar({super.key, this.title, this.leading, this.actions, this.bottom, this.center});

  final Widget? title;

  final Widget? leading;

  final List<Widget>? actions;

  final PreferredSizeWidget? bottom;

  final bool? center;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    final leading = buildLeading(canPop, onPressed: () => Navigator.of(context).pop());

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      removeLeft: true,
      removeRight: true,
      child: Container(
          width: preferredSize.width,
          height: preferredSize.height,
          margin: const EdgeInsets.only(top: 46),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    if (leading != null) leading,
                    if (title != null)
                      Flexible(
                        fit: FlexFit.loose,
                        child: title!,
                      ),
                    if (actions != null)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: actions!,
                        ),
                      ),
                  ],
                ),
              ),
              if (bottom != null) bottom!,
            ],
          )),
    );
  }

  Widget? buildLeading(bool canPop, {required VoidCallback onPressed}) {
    if (canPop && leading == null) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: onPressed,
        splashRadius: 24,
      );
    }

    return leading;
  }

  @override
  Size get preferredSize => Size.fromHeight(46 + kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}
