import 'package:exam/ui/utils/app_colors.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Health extends StatelessWidget {
  final String title;
  final String number;
  final String unit;
  final IconData icon;

  const Health({
    super.key,
    required this.title,
    required this.number,
    required this.unit,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: AppColors.clickedIcon2,
              size: 16,
              weight: 600,
            ),
            const SizedBox(width: 1),
            Text(
              title,
              style: AppTheme.normalTextStyle.copyWith(fontSize: 12),
            )
          ],
        ),
        Row(
          children: [
            Text(number,
                style: AppTheme.primaryTextStyle.copyWith(fontSize: 18)),
            const SizedBox(width: 2),
            Text(unit,
                style: AppTheme.normalTextStyle
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
          ],
        )
      ],
    );
  }
}
