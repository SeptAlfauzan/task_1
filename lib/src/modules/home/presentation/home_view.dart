import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/presentation/widgets/organism/home_content.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: HomeContent(),
      ),
    );
  }
}
