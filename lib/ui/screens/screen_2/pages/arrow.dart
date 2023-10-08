import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ArrowScreen extends StatelessWidget {
  const ArrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Arrow Screen", style: AppTheme.primaryTextStyle)],
      ),
    );
  }
}
