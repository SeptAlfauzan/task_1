import 'package:flutter/material.dart';
import 'package:task_1/src/modules/home/presentation/widgets/atoms/indicators.dart';
import 'package:task_1/src/ui/colors.dart';
import 'package:task_1/src/ui/typography.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  int _activeIndexBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(AppColors.lightGreen, BlendMode.softLight),
              image: const AssetImage("assets/images/leaf_bg.png"),
              fit: BoxFit.cover,
              opacity: 0.06),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Claim your\ndiscount 30%\ndaily now!",
                    style: AppTypography.bannerHeader,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    child: const Text(
                      "Order now",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 32,
              child: Transform.scale(
                scaleX: -1,
                child: Image.asset(
                  'assets/images/ice_cream.png',
                  width: 139,
                  height: 139,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: Indicators(
                    length: 3,
                    activeIndex: _activeIndexBanner,
                    onTap: (value) {
                      setState(() {
                        _activeIndexBanner = value;
                      });
                    })),
          ],
        ),
      ),
    );
  }
}
