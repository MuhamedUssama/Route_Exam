import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Grid Screen", style: AppTheme.primaryTextStyle)],
      ),
    );
  }
}
