import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';
import 'package:project_appbanhang/const/app_color.dart';

class ReplaceProfile extends StatefulWidget {
  const ReplaceProfile({super.key});

  @override
  State<ReplaceProfile> createState() => _ReplaceProfileState();
}

class _ReplaceProfileState extends State<ReplaceProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 1, color: AppColors.battleshipGray),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ]),
              child: Center(
                child: FaIcon(FontAwesomeIcons.arrowLeft),
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextTitle(label: "Đăng xuất"),
                SizedBox(
                  width: 10,
                ),
                FaIcon(FontAwesomeIcons.rightFromBracket),
              ],
            ),
          )
        ],
      )),
    );
  }
}
