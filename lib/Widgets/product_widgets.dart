import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../const/app_color.dart';

class ProductWidgets extends StatelessWidget {
  const ProductWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.battleshipGray),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/img/monan.jpg",
                    height: size.height * 0.2,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Text(
                            "Title" * 10,
                            maxLines: 2,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.heart),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          "Price: 16.0\$",
                          style: TextStyle(color: Colors.blue),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
