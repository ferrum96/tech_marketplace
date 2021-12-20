import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/categories/domain/entities/category_entity.dart';
import 'package:tech_marketplace/features/categories/domain/entities/category_item_entity.dart';
import 'package:tech_marketplace/features/home/domain/entities/filter_item.dart';
import 'package:tech_marketplace/features/categories/presentation/widgets/category_item_card_widget.dart';
import 'package:tech_marketplace/features/categories/presentation/widgets/custom_dropdown_button_widget.dart';

class CategoryPage extends StatefulWidget {
  final CategoryEntity category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  get selectedIndex => 0;

  @override
  Widget build(BuildContext context) {
    List<CategoryItemEntity> products = [
      const CategoryItemEntity(
          id: 0,
          productName: "Surface laptop 3",
          price: "USD 999",
          imagePath: "assets/images/surface_laptop.png"),
      const CategoryItemEntity(
          id: 1,
          productName: "XPS laptop 13",
          price: "USD 899",
          imagePath: "assets/images/xps_laptop.png"),
      const CategoryItemEntity(
          id: 2,
          productName: "LG Gram 17",
          price: "USD 1399",
          imagePath: "assets/images/lg_gram.png"),
      const CategoryItemEntity(
          id: 3,
          productName: "Macbook pro 13",
          price: "USD 1299",
          imagePath: "assets/images/laptop_picture.png"),
      const CategoryItemEntity(
          id: 4,
          productName: "MateBook 13",
          price: "USD 949",
          imagePath: "assets/images/huawei_laptop.png"),
      const CategoryItemEntity(
          id: 5,
          productName: "PixelBook Go",
          price: "USD 849",
          imagePath: "assets/images/pixelbook.png"),
    ];

    List<FilterItemEntity> items = [
      const FilterItemEntity(
          filterName: "Ascending price",
          imagePath: "assets/images/up_icon.png"),
      const FilterItemEntity(
          filterName: "Decreasing price",
          imagePath: "assets/images/down_icon.png"),
    ];

    List<FilterItemEntity> items2 = [
      const FilterItemEntity(filterName: "Filters", imagePath: ""),
      const FilterItemEntity(filterName: "Price", imagePath: ""),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height,
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
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  widget.category.categoryName,
                  style: const TextStyle(
                    color: AppColors.mainTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SF Pro Text",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
                child: Row(
                  children: [
                    CustomDropDownButton(
                      itemList: items,
                      width: 151,
                      height: 33,
                      border: Border.all(color: AppColors.grey, width: 1.5),
                      hint: "",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    CustomDropDownButton(
                      itemList: items2,
                      width: 75,
                      height: 33,
                      hint: "Filters",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset("assets/images/items_view_icon.png")
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.9),
                        itemBuilder: (context, index) => SizedBox(
                              child: CategoryItemCard(
                                product: products[index],
                              ),
                            )),
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
