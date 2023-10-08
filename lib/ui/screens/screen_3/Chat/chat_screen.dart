import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Chat Screen",
          style: AppTheme.primaryTextStyle,
        ),
      ),
    );
  }
}
