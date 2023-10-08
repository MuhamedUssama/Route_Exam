import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Analysis Screen", style: AppTheme.primaryTextStyle)],
      ),
    );
  }
}
