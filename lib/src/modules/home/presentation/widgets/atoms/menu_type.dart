import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/domain/entities/sub_menu.dart';

class MenuType extends StatelessWidget {
  final SubMenu menu;
  const MenuType({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            menu.imageUrl,
            width: 58,
            height: 58,
            fit: BoxFit.cover,
          ),
        ),
        Text(menu.name),
      ],
    );
  }
}
