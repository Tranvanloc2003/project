import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';

import '../../const/app_color.dart';
import '../text_title.dart';

class ProductsNewWidgets extends StatelessWidget {
  const ProductsNewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.battleshipGray),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: Image.asset("assets/img/monan.jpg",
                height: 100, width: 100, fit: BoxFit.cover),
          ),
          IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        child: Text(
                          "title" * 15,
                          maxLines: 2,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.7,
                    child: Row(
                      children: [
                        TextSubtitle(label: "100k"),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.basketShopping),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
