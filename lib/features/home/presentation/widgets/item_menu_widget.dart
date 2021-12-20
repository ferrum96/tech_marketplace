import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/categories/presentation/pages/categories_screen.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/categories.svg"),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoriesPage()),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Categories",
              style: TextStyle(
                color: AppColors.menuTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/favorites.svg"),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Favorites",
              style: TextStyle(
                color: AppColors.menuTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/gifts.svg"),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Gifts",
              style: TextStyle(
                color: AppColors.menuTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/best_selling.svg"),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Best Selling",
              style: TextStyle(
                color: AppColors.menuTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
