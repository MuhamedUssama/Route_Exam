import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBar3 extends StatelessWidget {
  const BottomNavigationBar3({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIcon = Provider.of<PageProvider>(context);
    return BottomNavigationBar(
      selectedItemColor: AppColors.clickedIcon3,
      unselectedItemColor: AppColors.accent3,
      currentIndex: selectedIcon.selectedIndex,
      onTap: (value) => selectedIcon.setPage(value),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today_outlined,
          ),
          label: "Today",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view,
          ),
          label: "Insights",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble_outline,
          ),
          label: "Chat",
        ),
      ],
    );
  }
}
