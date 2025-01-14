import 'package:task_1/src/modules/home/domain/entities/restaurant.dart';
import 'package:task_1/src/modules/home/domain/entities/sub_menu.dart';

abstract class RestaurantRepository {
  List<SubMenu> getSubMenus();
  List<Restaurant> getTopDiscountRestaurants();
}
