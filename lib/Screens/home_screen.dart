import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_appbanhang/Widgets/product/products_new_widgets.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';
import 'package:project_appbanhang/const/app_constans.dart';

import '../Controllers/theme_controller.dart';
import '../Widgets/appbar_widgets.dart';
import '../Widgets/ctg_rounded_widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWidget(text: "Trang chủ"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.3,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstans.bannersImages[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: AppConstans.bannersImages.length,
                    pagination: const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.red, color: Colors.white),
                    ),
                    autoplayDelay: 3000,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextTitle(label: "Các loại sản phẩm"),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(
                  AppConstans.categoriesList.length,
                  (index) => CtgRoundedWidgets(
                    image: AppConstans.categoriesList[index].image,
                    name: AppConstans.categoriesList[index].name,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextTitle(label: "Sản phẩm mới"),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 8),
                          child: ProductsNewWidgets(),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
