import 'package:example/widgets/container_color.dart';
import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme =   theme.textTheme;
    final colorScheme = theme.colorScheme;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: <Widget>[
        const TitleWidget(title: "Text Styles"),
        Text('Font Family: Montserrat', style: textTheme.bodyText1),
        Text(
          "Headline 1",
          style: textTheme.headline1,
        ),
        Text(
          "Headline 2",
          style: textTheme.headline2,
        ),
        Text(
          "Headline 3",
          style: textTheme.headline3,
        ),
        Text(
          "Headline 4",
          style: textTheme.headline4,
        ),
        Text(
          "Headline 5",
          style: textTheme.headline5,
        ),
        Text(
          "Headline 6",
          style: textTheme.headline6,
        ),
        Text(
          "Subtitle 1",
          style: textTheme.subtitle1,
        ),
        Text(
          "Subtitle 2",
          style: textTheme.subtitle2,
        ),
        Text(
          "Body Text 1",
          style: textTheme.bodyText1,
        ),
        Text(
          "Body Text 2",
          style: textTheme.bodyText2,
        ),
        Text(
          "Button",
          style: textTheme.button,
        ),
        Text(
          "Caption",
          style: textTheme.caption,
        ),
        Text(
          "Overline",
          style: textTheme.overline,
        ),
        const SizedBox(height: 24),
        const TitleWidget(title: "Colors"),
        ContainerColor(
          value: 'Primary',
          color: colorScheme.primary,
        ),
        ContainerColor(
          value: 'Secondary',
          color: colorScheme.secondary,
        ),
        ContainerColor(
          value: 'Background',
          color: colorScheme.background,
        ),
        ContainerColor(
          value: 'Surface',
          color: colorScheme.surface,
        ),
        ContainerColor(
          value: 'Error',
          color: colorScheme.error,
        ),
        ContainerColor(
          value: 'On Primary',
          color: colorScheme.onPrimary,
        ),
        ContainerColor(
          value: 'On Secondary',
          color: colorScheme.onSecondary,
        ),
        ContainerColor(
          value: 'On Background',
          color: colorScheme.onBackground,
        ),
        ContainerColor(
          value: 'On Surface',
          color: colorScheme.onSurface,
        ),
        ContainerColor(
          value: 'On Error',
          color: colorScheme.onError,
        ),

      ],
    );
  }
}
