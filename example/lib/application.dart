
import 'package:example/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTTAA Overview Theme',
      theme: kOttaaLightThemeData,
      home: const HomeScreen(),
    );
  }
}