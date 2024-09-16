import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_appbanhang/Widgets/appbar_widgets.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';

import '../const/app_color.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(text: "Thông tin cá nhân"),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip
                  .none, // cho pheps phan tu con vuot qua khoi phan height cua stack
              children: [
                Image.asset(
                  "assets/img/monan.jpg",
                  height: size.height * 0.3,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -size.height * 0.15,
                  left: size.width * 0.375,
                  child: Container(
                    height: size.height * 0.25,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3.0, color: Colors.white),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/img/monan.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            TextTitle(label: "Tran Van Loc"),
            SizedBox(
              height: 15,
            ),
            UserInformationWidget(
              title: "Email:",
              text: "namlun12333@gmail.com",
            ),
            SizedBox(
              height: 5,
            ),
            UserInformationWidget(
              title: "Số điện thoại:",
              text: "0796502808",
            ),
            SizedBox(
              height: 5,
            ),
            UserInformationWidget(
              title: "Ngày sinh:",
              text: "03/04/2003",
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    "Chỉnh sửa",
                    style: TextStyle(
                        color: AppColors.antiFlashWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.xanthous),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserInformationWidget extends StatelessWidget {
  final String title, text;
  const UserInformationWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(width: 0.3, color: AppColors.battleshipGray),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
