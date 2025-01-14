import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/dropdown_location.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({super.key});

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.green.withOpacity(0.1),
            ),
            child: Image.asset(
              'assets/icons/pin.png',
              width: 24,
              height: 24,
            )),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DropdownLocation(),
              Text(
                "Jl. Soekarno Hatta 15A Malang",
                style: AppTypography.header,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        const SizedBox(width: 68),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.lightGrey,
          ),
          child: Stack(
            children: [
              const Icon(Icons.notifications_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightGrey, width: 2),
                      shape: BoxShape.circle,
                      color: AppColors.red),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
