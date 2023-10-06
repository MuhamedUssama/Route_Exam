import 'package:exam/ui/utils/app_colors.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  const ExerciseCard({
    super.key,
    required this.color,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: color,
        height: MediaQuery.of(context).size.height * 0.085,
        width: MediaQuery.of(context).size.width * 0.38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 24,
              width: 24,
              fit: BoxFit.fill,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Text(
              title,
              style: AppTheme.seeTextStyle.copyWith(color: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }
}
