import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/data/repositories/restaurant_repository_impl.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/menu_type.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';

class SubMenuCategories extends StatelessWidget {
  const SubMenuCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Categories", style: AppTypography.header),
            Text("See all",
                style: AppTypography.header.copyWith(color: AppColors.grey)),
          ],
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: RestaurantRepositoryImpl()
                .getSubMenus()
                .map(
                  (menu) => MenuType(menu: menu),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
