import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_marketplace/components/app_colors.dart';
import 'package:tech_marketplace/features/account/presentation/pages/account_screen.dart';
import 'package:tech_marketplace/features/checkout/presentation/pages/checkout_screen.dart';
import 'package:tech_marketplace/features/home/presentation/pages/home_screen.dart';
import 'package:tech_marketplace/features/search/presentation/pages/search_screen.dart';

import 'features/home/domain/entities/carousel_item_entity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final Widget _homePage = const HomePage();

  final Widget _searchPage = const SearchPage();

  final Widget _checkoutPage = const CheckoutPage();

  final Widget _accountPage = const AccountPage();

  @override
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
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        child:
                            SvgPicture.asset("assets/icons/account_icon.svg")),
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
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: _getBody(),
                ),
              );
            },
          )),
    );
  }

  Widget _getBody() {
    if (selectedIndex == 0) {
      return _homePage;
    } else if (selectedIndex == 1) {
      return _searchPage;
    } else if (selectedIndex == 2) {
      return _checkoutPage;
    } else {
      return _accountPage;
    }
  }
}
