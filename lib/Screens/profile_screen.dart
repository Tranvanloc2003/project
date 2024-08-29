import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project_appbanhang/Widgets/appbar_widgets.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';
import 'package:project_appbanhang/const/app_constans.dart';

import '../Controllers/theme_controller.dart';
import '../Widgets/btn_position.dart';
import '../Widgets/logo_widgets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(text: "Hồ sơ"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(AppConstans.avatarImage),
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextTitle(
                            label: "Trần Văn Lộc", fontWeight: FontWeight.bold),
                        TextSubtitle(label: "namlun12333@gmail.com"),
                      ],
                    ),
                    const Spacer(), // day nút icon ve phía cuối
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const FaIcon(FontAwesomeIcons.rightFromBracket),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextTitle(label: "Tổng quan"),
                const SizedBox(
                  height: 20,
                ),
                BtnPosition(
                  img: AppConstans.orderSvg,
                  label: "Đơn hàng của tôi",
                  function: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                BtnPosition(
                  img: AppConstans.wishlistSvg,
                  label: "Đơn hàng yêu thích",
                  function: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                BtnPosition(
                  img: AppConstans.address,
                  label: "Địa chỉ của tôi",
                  function: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextTitle(label: "Cài đặt"),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => SwitchListTile(
                      secondary: Image.asset(AppConstans.theme),
                      title: Text(themeController.isDarkTheme
                          ? "Chế độ tối"
                          : "Chế độ sáng"),
                      value: themeController.isDarkTheme,
                      onChanged: (value) {
                        themeController.setDarkTheme(value);
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                BtnPosition(
                  img: AppConstans.user,
                  label: "Thông tin cá nhân",
                  function: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                BtnPosition(
                  img: AppConstans.login,
                  label: "Đăng nhập/Đăng ký",
                  function: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                BtnPosition(
                  img: AppConstans.logout,
                  label: "Đăng xuất",
                  function: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
