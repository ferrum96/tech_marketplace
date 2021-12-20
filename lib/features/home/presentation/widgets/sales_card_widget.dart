import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/home/domain/entities/sale_entity.dart';

class SalesCard extends StatelessWidget {
  final SaleEntity sale;

  const SalesCard({Key? key, required this.sale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: 170.0,
      height: 251.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Container(
              width: 39,
              height: 22,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  "-${sale.amountOfDiscount}%",
                  style: const TextStyle(
                      color: AppColors.menuTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro Text"),
                ),
              ),
            ),
          ),
          Center(child: Image.asset(sale.imagePath)),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
                child: Text(
              sale.title,
              style: const TextStyle(
                  color: AppColors.mainTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
          ),
        ],
      ),
    );
  }
}
