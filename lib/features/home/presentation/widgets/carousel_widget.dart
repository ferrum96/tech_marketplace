import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/home/domain/entities/carousel_item_entity.dart';
import 'package:tech_marketplace/features/home/presentation/widgets/carousel_card_widget.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<CarouselItemEntity> carouselItems = [
    const CarouselItemEntity(
        id: 0,
        name: "Bose Home Speaker",
        price: "USD 279",
        imagePath: "assets/images/bose_speaker.png"),
    const CarouselItemEntity(
        id: 1,
        name: "Surface laptop 3",
        price: "USD 999",
        imagePath: "assets/images/surface_laptop.png"),
    const CarouselItemEntity(
        id: 2,
        name: "Macbook pro 13",
        price: "USD 899",
        imagePath: "assets/images/laptop_picture.png"),
    const CarouselItemEntity(
        id: 3,
        name: "Macbook pro 13",
        price: "USD 899",
        imagePath: "assets/images/laptop_picture.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0, left: 16, bottom: 24),
          child: Text(
            "Home",
            style: TextStyle(
              color: AppColors.mainTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 145,
          child: Swiper(
              pagination: const SwiperPagination(
                  margin: EdgeInsets.all(16),
                  builder: DotSwiperPaginationBuilder(
                    activeColor: AppColors.grey,
                    activeSize: 8,
                    color: AppColors.activeGrey,
                    size: 5,
                  )),
              itemCount: carouselItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CarouselCard(
                    item: carouselItems[index],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
