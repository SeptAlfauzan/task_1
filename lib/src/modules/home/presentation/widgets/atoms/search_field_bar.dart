import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_1/src/ui/colors.dart';

class SearchFieldBar extends StatelessWidget {
  const SearchFieldBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TapRegion(
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search menu, restaurant or etc",
          hintStyle: TextStyle(color: AppColors.grey),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(36),
          ),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColors.grey,
            size: 16,
          ),
          suffixIcon: Icon(
            FontAwesomeIcons.sliders,
            color: AppColors.grey,
            size: 16,
          ),
        ),
      ),
    );
  }
}
