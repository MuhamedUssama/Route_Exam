import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class CardUi extends StatelessWidget {
  final Color color;
  const CardUi({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(24),
        color: color,
        height: 200,
        width: 326,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Positive Vibes",
                    style: AppTheme.cardTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Boost your mood with posivite vibes",
                    style: AppTheme.normalTextStyle,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 24,
                          width: 24,
                          color: const Color(0xff32d583),
                          child: const Icon(
                            Icons.play_arrow_sharp,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "10 mins",
                        style: AppTheme.normalTextStyle
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Image.asset("assets/screen_1/images/Walking the Dog.png",
                  width: 102, height: 90),
            ),
          ],
        ),
      ),
    );
  }
}
