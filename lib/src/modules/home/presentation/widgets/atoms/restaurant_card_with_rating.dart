import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/domain/entities/restaurant.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';
import 'package:task_1/src/utils/string.dart';

class RestaurantCardWithRating extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCardWithRating({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 96,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              restaurant.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          restaurant.name,
          style: AppTypography.header,
        ),
        Row(
          children: [
            Text(formattedDistance(distance: restaurant.distance),
                style: AppTypography.caption),
            Text(" · ",
                style: TextStyle(
                    color: AppColors.grey, fontSize: 32)), // Unicode middle dot
            Icon(
              Icons.star,
              color: AppColors.orange,
              size: 12,
            ),
            Text(formattedRatingReviews(rating: restaurant.rating),
                style: AppTypography.caption),
          ],
        )
      ],
    );
  }
}
