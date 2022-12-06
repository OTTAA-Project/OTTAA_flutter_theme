import 'package:example/screens/modals_screen.dart';
import 'package:example/screens/buttons_screen.dart';
import 'package:example/screens/cards_screen.dart';
import 'package:example/screens/inputs_screen.dart';
import 'package:example/screens/theme_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late final TabController _tabController = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTTAA Overview Theme'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Theme'),
            Tab(text: 'Buttons'),
            Tab(text: 'Cards'),
            Tab(text: 'Inputs'),
            Tab(text: 'Modals'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ThemeScreen(),
          ButtonsScreen(),
          CardsScreen(),
          InputsScreen(),
          ModalsScreen(),
        ],
      ),
   );
  }
}