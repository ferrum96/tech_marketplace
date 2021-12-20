import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/home/domain/entities/sale_entity.dart';
import 'package:tech_marketplace/features/home/presentation/widgets/sales_card_widget.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  List<SaleEntity> sales = [
    const SaleEntity(
        id: 0,
        amountOfDiscount: 40,
        imagePath: "assets/images/smartphone_picture.jpg",
        title: "Smartphones"),
    const SaleEntity(
        id: 1,
        amountOfDiscount: 50,
        imagePath: "assets/images/monitor_picture.png",
        title: "Monitors"),
    const SaleEntity(
        id: 2,
        amountOfDiscount: 50,
        imagePath: "assets/images/laptop_picture.png",
        title: "Laptops"),
    const SaleEntity(
        id: 3,
        amountOfDiscount: 30,
        imagePath: "assets/images/bose_speaker.png",
        title: "Speakers"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Sales",
          style: TextStyle(
            color: AppColors.mainTextColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 251.0,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: sales.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SalesCard(
                      sale: sales[index],
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ),
      ],
    );
  }
}
