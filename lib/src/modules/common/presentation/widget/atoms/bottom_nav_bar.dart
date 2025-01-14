import 'package:flutter/material.dart';
import 'package:task_1/src/modules/common/domain/entities/bottombar_menu.dart';
import 'package:task_1/src/ui/colors.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentPageIndex;
  final List<BottombarMenu> items;
  const BottomNavBar({
    super.key,
    required this.onTap,
    required this.currentPageIndex,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
      ),
      child: NavigationBar(
        onDestinationSelected: onTap,
        indicatorColor: Colors.transparent,
        backgroundColor: AppColors.white,
        selectedIndex: currentPageIndex,
        destinations: items
            .map(
              (item) => NavigationDestination(
                icon: Image.asset(item.iconUrl),
                label: item.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
