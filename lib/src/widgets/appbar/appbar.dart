import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class OTTAAAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OTTAAAppBar({super.key, this.title, this.leading, this.actions});

  final Widget? title;

  final Widget? leading;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    BasicBottomSheet.show(context,

    );

    return Container(
      margin: const EdgeInsets.only(top: 46),
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          if (canPop && leading == null) ...[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          if (leading != null) leading!,
          if (title != null) title!,
          if (actions != null) ...actions!,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(46 + kToolbarHeight);
}
