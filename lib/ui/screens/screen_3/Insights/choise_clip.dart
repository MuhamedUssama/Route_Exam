import 'package:exam/ui/provider/page_provider.dart';
import 'package:exam/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildChoiceChip extends StatelessWidget {
  const BuildChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    final itemSelected = Provider.of<PageProvider>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ChoiceChip(
            label: const Text('Discover'),
            labelStyle: itemSelected.selectedIndices[0] == 0
                ? AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: const Color(0xff6941C6))
                : AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff667085)),
            elevation: 2,
            selected: itemSelected.selectedIndices[0] == 0,
            selectedColor: const Color(0xffD6BBFB),
            backgroundColor: Colors.white,
            onSelected: (selected) {
              if (selected) {
                itemSelected.setSelectedIndex(0, 0);
              } else {
                itemSelected.setSelectedIndex(-1, 0);
              }
            },
          ),
          const SizedBox(width: 8),
          ChoiceChip(
            label: const Text('News'),
            labelStyle: itemSelected.selectedIndices[0] == 0
                ? AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: const Color(0xff6941C6))
                : AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff667085)),
            elevation: 2,
            selected: itemSelected.selectedIndices[1] == 0,
            selectedColor: const Color(0xffD6BBFB),
            backgroundColor: Colors.white,
            onSelected: (selected) {
              if (selected) {
                itemSelected.setSelectedIndex(0, 1);
              } else {
                itemSelected.setSelectedIndex(-1, 1);
              }
            },
          ),
          const SizedBox(width: 8),
          ChoiceChip(
            label: const Text('Most Viewed'),
            labelStyle: itemSelected.selectedIndices[0] == 0
                ? AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: const Color(0xff6941C6))
                : AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff667085)),
            elevation: 2,
            selected: itemSelected.selectedIndices[2] == 0,
            selectedColor: const Color(0xffD6BBFB),
            backgroundColor: Colors.white,
            onSelected: (selected) {
              if (selected) {
                itemSelected.setSelectedIndex(0, 2);
              } else {
                itemSelected.setSelectedIndex(-1, 2);
              }
            },
          ),
          const SizedBox(width: 8),
          ChoiceChip(
            label: const Text('Saved'),
            labelStyle: itemSelected.selectedIndices[0] == 0
                ? AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: const Color(0xff6941C6))
                : AppTheme.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff667085)),
            elevation: 2,
            selected: itemSelected.selectedIndices[3] == 0,
            selectedColor: const Color(0xffD6BBFB),
            backgroundColor: Colors.white,
            onSelected: (selected) {
              if (selected) {
                itemSelected.setSelectedIndex(0, 3);
              } else {
                itemSelected.setSelectedIndex(-1, 3);
              }
            },
          ),
        ],
      ),
    );
  }
}
