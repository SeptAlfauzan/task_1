import 'package:flutter/material.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';

class DropdownLocation extends StatefulWidget {
  const DropdownLocation({super.key});

  @override
  State<DropdownLocation> createState() => _DropdownLocationState();
}

class _DropdownLocationState extends State<DropdownLocation> {
  final locations = ["Current location", 'Another location'];
  String selectedLocation = "Current location";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: DropdownButton<String>(
        underline: const SizedBox.shrink(),
        value: selectedLocation,
        hint: Text(
          'Select an option',
          style: AppTypography.subtitle
              .copyWith(color: AppColors.darkGrey, fontWeight: FontWeight.w400),
        ),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              selectedLocation = newValue;
            });
          }
        },
        items: locations.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppTypography.subtitle.copyWith(
                  color: AppColors.darkGrey, fontWeight: FontWeight.w400),
            ),
          );
        }).toList(),
      ),
    );
  }
}
