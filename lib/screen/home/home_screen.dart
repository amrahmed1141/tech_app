import 'package:flutter/material.dart';
import 'package:tech_app/constants/colors.dart';
import 'package:tech_app/screen/home/tabs/ps4_screen.dart';
import 'package:tech_app/screen/home/tabs/ps5_screen.dart';
import 'package:tech_app/screen/home/tabs/watches_screen.dart';
import 'package:tech_app/screen/home/widgets/app_bar_items.dart';
import 'package:tech_app/screen/home/widgets/home_welcome_text.dart';
import 'package:tech_app/screen/home/tabs/headsets_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> categories = [
    'ps4 Controllers',
    'ps5 Controllers',
    'Watches',
    'Headsets',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarItems(),
      body: Column(
        children: [
          homewelcomeText(),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: kSecondaryColor,
              labelColor: kSecondaryColor,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: categories.map((cat) => Tab(text: cat)).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
               Ps4Screen(),
               Ps5Screen(),
               WatchesScreen(),
               HeadsetsScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
