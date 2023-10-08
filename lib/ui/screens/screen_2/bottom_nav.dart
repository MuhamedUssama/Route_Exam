import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          pageProvider.setPage(value);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: pageProvider.selectedIndex == 0
                    ? AppColors.clickedIcon2
                    : Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.send,
                color: pageProvider.selectedIndex == 1
                    ? AppColors.clickedIcon2
                    : Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_outlined,
                color: pageProvider.selectedIndex == 2
                    ? AppColors.clickedIcon2
                    : Colors.grey,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: pageProvider.selectedIndex == 3
                    ? AppColors.clickedIcon2
                    : Colors.grey,
              ),
              label: ""),
        ]);
  }
}
