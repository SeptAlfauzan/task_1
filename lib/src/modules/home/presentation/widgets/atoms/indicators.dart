import 'package:flutter/material.dart';
import 'package:task_1/src/extensions/list_widget_extension.dart';
import 'package:task_1/src/ui/colors.dart';

class Indicators extends StatelessWidget {
  final int length;
  final int activeIndex;
  final Function(int) onTap;
  const Indicators({
    super.key,
    required this.length,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          length,
          (index) => GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              width: 10,
              height: 4,
              decoration: BoxDecoration(
                color: activeIndex == index
                    ? AppColors.green
                    : AppColors.lightGrey,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
            ),
          ),
        ).addGap(
          gapSize: 4,
          axis: Axis.horizontal,
        ),
      ),
    );
  }
}
