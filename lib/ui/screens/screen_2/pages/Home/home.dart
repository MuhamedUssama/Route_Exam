import 'package:exam/ui/screens/screen_2/pages/Home/Workout%20Types/all_type.dart';
import 'package:exam/ui/screens/screen_2/pages/Home/custom_health.dart';
import 'package:exam/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'package:exam/ui/utils/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    List<Map<String, String>> allTypeData = [
      {
        "title": "Morning Yoga",
        "days": "7 days",
        "image": "assets/screen_2/images/yoga.png"
      },
      {
        "title": "Plank Exercise",
        "days": "3 days",
        "image": "assets/screen_2/images/plank.png"
      },
      {
        "title": "Evening Yoga",
        "days": "5 days",
        "image": "assets/screen_2/images/yoga.png"
      },
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/screen_2/images/logo.jpg",
                      height: 56,
                      width: 56,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Hello, Jade",
                            style: AppTheme.normalTextStyle),
                        const SizedBox(height: 4),
                        Text("Ready to workout?",
                            style: AppTheme.primaryTextStyle
                                .copyWith(fontSize: 18)),
                      ],
                    ),
                  ],
                ),
                badges.Badge(
                  badgeContent: const Text(""),
                  position: badges.BadgePosition.topEnd(top: -6, end: 2),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    size: 32,
                    weight: 600,
                  ),
                )
              ],
            ),
            const SizedBox(height: 27),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: AppColors.background2,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: const IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Health(
                          title: "Health Rate",
                          number: "81",
                          unit: "BPM",
                          icon: Icons.favorite_border_outlined),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: 2,
                      ),
                      Health(
                          title: "To-do",
                          number: "32,5",
                          unit: "%",
                          icon: Icons.list),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: 2,
                      ),
                      Health(
                          title: "Calo",
                          number: "1000",
                          unit: "Cal",
                          icon: Icons.whatshot),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Workout Programs",
              style: AppTheme.primaryTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 16),
            TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: AppColors.clickedIcon2,
              indicatorColor: AppColors.clickedIcon2,
              isScrollable: true,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "All Type",
                ),
                Tab(
                  text: "Full Body",
                ),
                Tab(
                  text: "Upper",
                ),
                Tab(
                  text: "Lower",
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: allTypeData.length,
                    itemBuilder: (BuildContext context, int index) {
                      String title = allTypeData[index]["title"] ?? "";
                      String days = allTypeData[index]["days"] ?? "";
                      String image = allTypeData[index]["image"] ?? "";

                      return Column(
                        children: [
                          AllType(
                            title: title,
                            days: days,
                            image: image,
                          ),
                          const SizedBox(height: 24),
                        ],
                      );
                    },
                  ),
                  const Center(
                      child:
                          Text("Full Body", style: AppTheme.primaryTextStyle)),
                  const Center(
                      child: Text("Upper", style: AppTheme.primaryTextStyle)),
                  const Center(
                      child: Text("Lower", style: AppTheme.primaryTextStyle)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
