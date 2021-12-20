import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/home/presentation/widgets/carousel_widget.dart';
import 'package:tech_marketplace/features/home/presentation/widgets/item_menu_widget.dart';
import 'package:tech_marketplace/features/home/presentation/widgets/sales_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBackground,
      child: SafeArea(
        child: Column(
          children: const [
            Carousel(),
            SizedBox(height: 12),
            ItemMenu(),
            SizedBox(height: 30),
            Sales(),
          ],
        ),
      ),
    );
  }
}
