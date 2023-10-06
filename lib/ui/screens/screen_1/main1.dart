import 'package:exam/ui/screens/screen_1/bottom_nav.dart';
import 'package:exam/ui/screens/screen_1/calender_screen.dart';
import 'package:exam/ui/screens/screen_1/grid_screen.dart';
import 'package:exam/ui/screens/screen_1/home_screen.dart';
import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/screens/screen_1/person_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenOne extends StatelessWidget {
  static const routeName = "screen_1";
  HomeScreenOne({Key? key}) : super(key: key);

  final List<Widget> pageWidgets = [
    Home(),
    GridScreen(),
    CalenderScreen(),
    PersonScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageWidgets[Provider.of<PageProvider>(context).selectedIndex],
      bottomNavigationBar: BuildBottomNav(),
    );
  }
}
