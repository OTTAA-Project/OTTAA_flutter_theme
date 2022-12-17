import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: <Widget>[
        const TitleWidget(title: 'Primary Button'),
        PrimaryButton(
          onPressed: () {},
          text: 'Enable Primary Button',
        ),
        const SizedBox(height: 16),
        const PrimaryButton(
          onPressed: null,
          text: 'Disable Primary Button',
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Secondary Button'),
        SecondaryButton(
          onPressed: () {},
          text: 'Enable Secondary Button',
        ),
        const SizedBox(height: 16),
        const SecondaryButton(
          onPressed: null,
          text: 'Disable Secondary Button',
        ),
      ],
    );
  }
}
