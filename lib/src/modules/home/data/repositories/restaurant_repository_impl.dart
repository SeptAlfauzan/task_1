import 'package:task_1/src/modules/home/domain/entities/restaurant.dart';
import 'package:task_1/src/modules/home/domain/entities/sub_menu.dart';
import 'package:task_1/src/modules/home/domain/repositories/restaurant_repositories.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  @override
  List<SubMenu> getSubMenus() {
    return [
      const SubMenu(imageUrl: 'assets/images/beverage.png', name: "Beverage"),
      const SubMenu(imageUrl: 'assets/images/snack.png', name: "Snack"),
      const SubMenu(imageUrl: 'assets/images/seafood.png', name: "Seafood"),
      const SubMenu(imageUrl: 'assets/images/dessert.png', name: "Dessert"),
    ];
  }

  @override
  List<Restaurant> getTopDiscountRestaurants() {
    return [
      const Restaurant(
        imageUrl: 'assets/images/restaurant_starbuck_borobudur.png',
        name: 'Starbuck Borobudur',
        rating: 4.8,
        distance: 1000,
      ),
      const Restaurant(
        imageUrl: 'assets/images/restaurant_bagoepa_suhat.png',
        name: 'Bagoepa Suhat',
        rating: 4.8,
        distance: 500,
      ),
    ];
  }
}
