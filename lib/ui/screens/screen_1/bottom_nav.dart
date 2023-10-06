import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/utils/app_colors.dart';

class BuildBottomNav extends StatefulWidget {
  const BuildBottomNav({super.key});

  @override
  State<BuildBottomNav> createState() => _BuildBottomNavState();
}

class _BuildBottomNavState extends State<BuildBottomNav> {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        pageProvider.setPage(index);
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: pageProvider.selectedIndex == 0
                ? AppColors.accent1
                : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view,
            color: pageProvider.selectedIndex == 1
                ? AppColors.accent1
                : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
            color: pageProvider.selectedIndex == 2
                ? AppColors.accent1
                : Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: pageProvider.selectedIndex == 3
                ? AppColors.accent1
                : Colors.grey,
          ),
          label: '',
        ),
      ],
    );
  }
}
