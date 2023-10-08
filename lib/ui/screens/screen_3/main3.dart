import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/screens/screen_3/Chat/chat_screen.dart';
import 'package:exam/ui/screens/screen_3/Insights/insights_screen.dart';
import 'package:exam/ui/screens/screen_3/Today/today_screen.dart';
import 'package:exam/ui/screens/screen_3/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenThird extends StatelessWidget {
  static const routeName = "screen_3";
  HomeScreenThird({Key? key}) : super(key: key);

  final List<Widget> pageWidgetsForSecondScreen = [
    const Today(),
    const Insights(),
    const Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageWidgetsForSecondScreen[
          Provider.of<PageProvider>(context).selectedIndex],
      bottomNavigationBar: const BottomNavigationBar3(),
    );
  }
}
