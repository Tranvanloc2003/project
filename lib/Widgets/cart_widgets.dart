import 'package:flutter/material.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';

class CartWidgets extends StatelessWidget {
  CartWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/img/monan.jpg",
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                ListTile(
                    title: TextTitle(
                  label: "11111111111111111111111111111111111",
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
