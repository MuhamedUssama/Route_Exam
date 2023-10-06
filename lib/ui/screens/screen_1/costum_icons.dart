import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CostomIcons extends StatelessWidget {
  final String image;
  final String title;
  const CostomIcons({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 60, height: 60),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: AppTheme.normalTextStyle,
        )
      ],
    );
  }
}
