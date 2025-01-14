import 'package:flutter/widgets.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/search_field_bar.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/top_header.dart';
import 'package:task_1/src/modules/home/presentation/widgets/molecules/banner_card.dart';
import 'package:task_1/src/modules/home/presentation/widgets/molecules/sub_menu_categories.dart';
import 'package:task_1/src/modules/home/presentation/widgets/molecules/top_discount_restaurants.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 21),
          TopHeader(),
          SizedBox(height: 21),
          SearchFieldBar(),
          SizedBox(height: 18),
          BannerCard(),
          SizedBox(height: 30),
          SubMenuCategories(),
          SizedBox(height: 20),
          TopDiscountRestaurants()
        ],
      ),
    );
  }
}
