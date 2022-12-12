import 'package:flutter/material.dart';

class OTTAAAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OTTAAAppBar({super.key, this.title, this.leading, this.actions});

  final Widget? title;

  final Widget? leading;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    return Container(
      margin: const EdgeInsets.only(top: 46),
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          buildLeading(canPop, onPressed: () => Navigator.of(context).pop()),
          if (title != null) title!,
          if (actions != null) ...actions!,
        ],
      ),
    );
  }

  Widget buildLeading(bool canPop, {required VoidCallback onPressed}) {
    if (canPop && leading == null) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: onPressed,
      );
    }

    return leading ?? const SizedBox();
  }

  @override
  Size get preferredSize => const Size.fromHeight(46 + kToolbarHeight);
}
