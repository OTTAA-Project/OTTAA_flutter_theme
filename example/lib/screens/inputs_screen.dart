import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: <Widget>[
        const TitleWidget(title: 'Text Input'),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Label',
            hintText: 'Hint',
          ),
        ),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Label',
            hintText: 'Hint',
            errorText: 'Error',
          ),
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Dropdown'),
        OTTAADropdown<String>(
          items: const ['Item 1', 'Item 2', 'Item 3'],
          label: (item) => Text(item),
          onChanged: (_) {},
          selected: 'Item 1',
        ),
        const SizedBox(height: 16),
        OTTAADropdown<String>(
          items: const ['Item 1', 'Item 2', 'Item 3'],
          label: (item) => Text(item),
          onChanged: null,
          selected: 'Item 1',
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Android Check Box'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: true, onChanged: (_) => {}),
            Checkbox(value: false, onChanged: (_) => {}),
            const Checkbox(value: true, onChanged: null),
            const Checkbox(value: false, onChanged: null),
          ],
        ),
        const TitleWidget(title: 'Android Radio Button'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(value: true, onChanged: (_) => {}, groupValue: false),
            Radio(value: false, onChanged: (_) => {}, groupValue: false),
            const Radio(value: true, onChanged: null, groupValue: false),
            const Radio(value: false, onChanged: null, groupValue: false),
          ],
        ),
        const TitleWidget(title: 'Android Switch'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(value: true, onChanged: (_) => {}),
            Switch(value: false, onChanged: (_) => {}),
            const Switch(value: true, onChanged: null),
            const Switch(value: false, onChanged: null),
          ],
        ),
        const TitleWidget(title: 'OTTAA Switch'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OTTAASwitch(value: true, onChanged: (_) => {}),
            OTTAASwitch(value: false, onChanged: (_) => {}),
            const OTTAASwitch(value: true, onChanged: null),
            const OTTAASwitch(value: false, onChanged: null),
          ],
        ),
      ],
    );
  }
}
