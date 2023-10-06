import 'package:exam/ui/utils/app_colors.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTheme.primaryTextStyle.copyWith(fontSize: 18),
        ),
        const Spacer(),
        const Text(
          "See more",
          style: AppTheme.seeTextStyle,
        ),
        const Icon(
          Icons.keyboard_arrow_right,
          color: AppColors.accent1,
          size: 20,
        )
      ],
    );
  }
}
