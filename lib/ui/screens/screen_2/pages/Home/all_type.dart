import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

class AllType extends StatelessWidget {
  final String title;
  final String days;
  final String image;
  const AllType(
      {super.key,
      required this.title,
      required this.days,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: 174,
        color: const Color(0xffEAECF5),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        days,
                        style: AppTheme.primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      title,
                      style: AppTheme.primaryTextStyle
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Improve mental focus.",
                      style: AppTheme.primaryTextStyle
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.watch_later_outlined, size: 16),
                        const SizedBox(width: 6),
                        Text(
                          "30 mins",
                          style: AppTheme.primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
//"assets/screen_2/images/yoga.png"