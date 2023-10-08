import 'package:exam/ui/screens/screen_3/Insights/choise_clip.dart';
import 'package:exam/ui/utils/app_colors.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Insights extends StatelessWidget {
  const Insights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/screen_3/images/logo.png"),
                  const SizedBox(width: 5),
                  const Text("AliceCare", style: AppTheme.primaryTextStyle)
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                height: 44,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.search,
                      color: AppColors.accent3,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Articles, Video, Audio and More,...",
                      style: AppTheme.normalTextStyle
                          .copyWith(color: AppColors.accent3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const BuildChoiceChip(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot topics",
                    style: AppTheme.primaryTextStyle.copyWith(fontSize: 18),
                  ),
                  const Row(
                    children: [
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff5925DC),
                        size: 16,
                        weight: 600,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/screen_3/images/1.jpg"),
                    ),
                    const SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/screen_3/images/2.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Get Tips",
                style: AppTheme.primaryTextStyle.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffE4E7EC),
                ),
                width: double.infinity,
                height: 196,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child:
                            Image.asset("assets/screen_3/images/doctor.png")),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Connect with doctors & get suggestions",
                              style: AppTheme.seeTextStyle
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Connect now and get expert insights ",
                              style: AppTheme.normalTextStyle
                                  .copyWith(fontSize: 14),
                            ),
                            const SizedBox(height: 24),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              width: 104,
                              height: 36,
                              decoration: BoxDecoration(
                                color: const Color(0xff7F56D9),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "View detail",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cycle Phases and Period",
                    style: AppTheme.primaryTextStyle.copyWith(fontSize: 18),
                  ),
                  const Row(
                    children: [
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff5925DC),
                        size: 16,
                        weight: 600,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
