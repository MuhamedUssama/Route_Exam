import 'package:exam/ui/screens/screen_1/carousel_slider.dart';
import 'package:exam/ui/screens/screen_1/costum_icons.dart';
import 'package:exam/ui/screens/screen_1/costum_row.dart';
import 'package:exam/ui/screens/screen_1/exercise_card.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("assets/screen_1/images/logo.jpg",
                    width: 40, height: 40),
                const SizedBox(
                  width: 8,
                ),
                const Text("Moody", style: AppTheme.primaryTextStyle),
                const Spacer(),
                badges.Badge(
                  badgeContent: const Text(""),
                  position: badges.BadgePosition.topEnd(top: -6, end: 2),
                  child: const Icon(Icons.notifications_none_rounded, size: 32),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Text(
                  "Hello, ",
                  style: AppTheme.secondaryTextStyle,
                ),
                Text(
                  "Sara Rose",
                  style: AppTheme.primaryTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "How are you feeling today ?",
              style: AppTheme.normalTextStyle,
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CostomIcons(
                  image: "assets/screen_1/images/love.jpg",
                  title: "Love",
                ),
                CostomIcons(
                  image: "assets/screen_1/images/cool.jpg",
                  title: "Cool",
                ),
                CostomIcons(
                  image: "assets/screen_1/images/happy.jpg",
                  title: "Happy",
                ),
                CostomIcons(
                  image: "assets/screen_1/images/sad.jpg",
                  title: "Sad",
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomRow(title: "Feature"),
            const SizedBox(
              height: 16,
            ),
            const SliderCards(),
            const SizedBox(
              height: 40,
            ),
            const CustomRow(title: "Exercise"),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExerciseCard(
                  color: Color(0xfff9f5ff),
                  image: "assets/screen_1/images/relax.png",
                  title: "Relaxation",
                ),
                ExerciseCard(
                  color: Color(0xfffdf2fa),
                  image: "assets/screen_1/images/meditation.png",
                  title: "Meditation",
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExerciseCard(
                  color: Color(0xffFFFAF5),
                  image: "assets/screen_1/images/breathing.png",
                  title: "Beathing",
                ),
                ExerciseCard(
                  color: Color(0xfff0f9ff),
                  image: "assets/screen_1/images/yoga.png",
                  title: "Yoga",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
