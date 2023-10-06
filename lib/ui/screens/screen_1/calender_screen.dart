import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Calender Screen", style: AppTheme.primaryTextStyle)],
      ),
    );
    ;
  }
}
