import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/screens/screen_2/bottom_nav.dart';
import 'package:exam/ui/screens/screen_2/pages/analysis.dart';
import 'package:exam/ui/screens/screen_2/pages/arrow.dart';
import 'package:exam/ui/screens/screen_2/pages/Home/home.dart';
import 'package:exam/ui/screens/screen_2/pages/person.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenSecond extends StatelessWidget {
  static const routeName = "screen_2";
  HomeScreenSecond({Key? key}) : super(key: key);

  final List<Widget> pageWidgetsForSecondScreen = [
    HomeScreen(),
    ArrowScreen(),
    AnalysisScreen(),
    PersonScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageWidgetsForSecondScreen[
          Provider.of<PageProvider>(context).selectedIndex],
      bottomNavigationBar: const BottomNav(),
    );
  }
}
