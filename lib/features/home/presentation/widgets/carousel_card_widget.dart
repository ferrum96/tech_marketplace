import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/home/domain/entities/carousel_item_entity.dart';

class CarouselCard extends StatelessWidget {
  final CarouselItemEntity item;

  const CarouselCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        color: AppColors.mainThemeColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  item.price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Image.asset(item.imagePath),
          ],
        ),
      ),
    );
  }
}
