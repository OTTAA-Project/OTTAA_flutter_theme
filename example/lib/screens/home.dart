import 'package:auto_size_text/auto_size_text.dart';
import 'package:example/screens/modals_screen.dart';
import 'package:example/screens/buttons_screen.dart';
import 'package:example/screens/cards_screen.dart';
import 'package:example/screens/inputs_screen.dart';
import 'package:example/screens/theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_ui_kit/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 5, vsync: this);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: OTTAAAppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
            splashRadius: 24,
          ),
          title: Row(
            children: [
              const AutoSizeText(
                "Texto predicitvo",
                minFontSize: 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.info_outline, size: 18),
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("Next"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                enableFeedback: false,
                foregroundColor: Colors.grey,
              ),
            ),
          ],
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
      ),
    );
  }
}
