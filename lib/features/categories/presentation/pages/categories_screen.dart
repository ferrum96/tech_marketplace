import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/categories/domain/entities/category_entity.dart';
import 'package:tech_marketplace/features/categories/presentation/widgets/category_card_widget.dart';

import 'category_screen.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<CategoryEntity> categories = [
    const CategoryEntity(id: 0, categoryName: "All"),
    const CategoryEntity(id: 1, categoryName: "Computers"),
    const CategoryEntity(id: 2, categoryName: "Accessories"),
    const CategoryEntity(id: 3, categoryName: "Smartphones"),
    const CategoryEntity(id: 4, categoryName: "Smart Objects"),
    const CategoryEntity(id: 5, categoryName: "Speakers"),
    const CategoryEntity(id: 6, categoryName: "Laptop"),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: AppColors.mainBackground,
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            backgroundColor: AppColors.tabBarBackground,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                      left: 32,
                    ),
                    child: SvgPicture.asset("assets/icons/home_icon.svg"),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                      left: 32,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/home_icon.svg",
                      color: AppColors.mainThemeColor,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 8),
                    child: SvgPicture.asset("assets/icons/search_icon.svg"),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 8),
                    child: SvgPicture.asset(
                      "assets/icons/search_icon.svg",
                      color: AppColors.mainThemeColor,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.only(bottom: 12, right: 8),
                      child:
                          SvgPicture.asset("assets/icons/checkout_icon.svg")),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 12, right: 8),
                    child: SvgPicture.asset(
                      "assets/icons/checkout_icon.svg",
                      color: AppColors.mainThemeColor,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12,
                        right: 32,
                      ),
                      child: SvgPicture.asset("assets/icons/account_icon.svg")),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                      right: 32,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/account_icon.svg",
                      color: AppColors.mainThemeColor,
                    ),
                  ),
                  label: ""),
            ],
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 4),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(
                    "assets/images/back_icon.png",
                    color: AppColors.mainTextColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, left: 12),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: AppColors.mainTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SF Pro Text",
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryPage(
                                        category: categories[index],
                                      )),
                            );
                          },
                          child: CategoryCard(
                            category: categories[index],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 16);
                      },
                      itemCount: categories.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
