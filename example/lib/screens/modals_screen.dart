import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class ModalsScreen extends StatelessWidget {
  const ModalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: [
        const TitleWidget(title: 'Basic bottom sheet'),
        PrimaryButton(
          onPressed: () => BasicBottomSheet.show(
            context,
            title: 'Title',
            subtitle: 'Subtitle',
            children: <Widget>[
              const Text('Content'),
            ],
          ),
          text: 'Open',
        ),
      ],
    );
  }
}
