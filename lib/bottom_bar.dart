import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:project_appbanhang/Screens/cart_screen.dart';
import 'package:project_appbanhang/Screens/home_screen.dart';
import 'package:project_appbanhang/Screens/profile_screen.dart';
import 'package:project_appbanhang/Screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late List<Widget> screens;
  int currentScreens = 0;
  late PageController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = [
      HomeScreen(),
      SearchScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    controller = PageController(initialPage: currentScreens);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreens,
        elevation: 10,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (value) {
          setState(() {
            currentScreens = value;
          });
          controller.jumpToPage(currentScreens);
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: FaIcon(FontAwesomeIcons.home), // bieu tuong duoc chon
            icon: Icon(IconlyLight.home),
            label: 'Trang chủ', //bieu tuong khong duoc chon
          ),
          NavigationDestination(
            selectedIcon:
                FaIcon(FontAwesomeIcons.search), // bieu tuong duoc chon
            icon: Icon(IconlyLight.search),
            label: 'Tìm kiếm', //bieu tuong khong duoc chon
          ),
          NavigationDestination(
            selectedIcon:
                FaIcon(FontAwesomeIcons.cartShopping), // bieu tuong duoc chon
            icon: Icon(IconlyLight.bag_2),
            label: 'Giỏ hàng', //bieu tuong khong duoc chon
          ),
          NavigationDestination(
            selectedIcon: FaIcon(FontAwesomeIcons.user), // bieu tuong duoc chon
            icon: Icon(IconlyLight.profile),
            label: 'Hồ sơ', //bieu tuong khong duoc chon
          ),
        ],
      ),
    );
  }
}
