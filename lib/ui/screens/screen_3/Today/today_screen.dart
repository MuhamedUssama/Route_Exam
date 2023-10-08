import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Today Screen",
          style: AppTheme.primaryTextStyle,
        ),
      ),
    );
  }
}
