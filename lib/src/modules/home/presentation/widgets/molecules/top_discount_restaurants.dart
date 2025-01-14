import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/data/repositories/restaurant_repository_impl.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/restaurant_card_with_rating.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';

class TopDiscountRestaurants extends StatelessWidget {
  const TopDiscountRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Discount", style: AppTypography.header),
            Text("See all",
                style: AppTypography.header.copyWith(color: AppColors.grey)),
          ],
        ),
        const SizedBox(height: 14),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 4,
          children: RestaurantRepositoryImpl()
              .getTopDiscountRestaurants()
              .map((restaurant) => RestaurantCardWithRating(
                    restaurant: restaurant,
                  ))
              .toList(),
        )
      ],
    );
  }
}
