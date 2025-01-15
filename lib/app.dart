import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_1/src/common/domain/entities/bottombar_menu.dart';
import 'package:task_1/src/common/presentation/widget/atoms/bottom_nav_bar.dart';
import 'package:task_1/src/modules/home/presentation/home_view.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
  }

  int _currentPageIndex = 0;
  final bottomBarMenu = [
    const BottombarMenu(
      label: 'Home',
      iconUrl: 'assets/icons/home.png',
    ),
    const BottombarMenu(
      label: 'Orders',
      iconUrl: 'assets/icons/orders.png',
    ),
    const BottombarMenu(
      label: 'Bookmark',
      iconUrl: 'assets/icons/bookmark.png',
    ),
    const BottombarMenu(
      label: 'Profile',
      iconUrl: 'assets/icons/profile.png',
    ),
  ];

  final contents = [
    const HomeView(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
          bottomNavigationBar: BottomNavBar(
            items: bottomBarMenu,
            currentPageIndex: _currentPageIndex,
            onTap: (index) {
              setState(
                () {
                  _currentPageIndex = index;
                },
              );
            },
          ),
          backgroundColor: AppColors.white,
          body: contents[_currentPageIndex]),
    );
  }
}
