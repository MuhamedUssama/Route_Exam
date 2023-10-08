import 'package:exam/ui/screens/presentation_screen/custom_button.dart';
import 'package:exam/ui/screens/screen_1/main1.dart';
import 'package:exam/ui/screens/screen_2/main2.dart';
import 'package:exam/ui/screens/screen_3/main3.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PresntationScreen extends StatelessWidget {
  static const routeName = "presentation";
  const PresntationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/intro/Hand holding pen-amico.png",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              const Text("Welcome to my app", style: AppTheme.primaryTextStyle),
              const SizedBox(height: 8),
              Text(
                "please choose your screen",
                style: AppTheme.normalTextStyle.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              const CustomButton(
                selectedScreen: HomeScreenOne.routeName,
                title: "Moody - Mental Health App",
              ),
              const SizedBox(height: 12),
              const CustomButton(
                selectedScreen: HomeScreenSecond.routeName,
                title: "Workout App",
              ),
              const SizedBox(height: 12),
              const CustomButton(
                selectedScreen: HomeScreenThird.routeName,
                title: "News App",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
