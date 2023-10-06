import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Person Screen", style: AppTheme.primaryTextStyle)],
      ),
    );
    ;
  }
}
