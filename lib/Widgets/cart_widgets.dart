import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project_appbanhang/Widgets/quantity_widgets.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';
import 'package:project_appbanhang/const/app_color.dart';

class CartWidgets extends StatelessWidget {
  CartWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.battleshipGray),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                child: Image.asset(
                  "assets/img/monan.jpg",
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
              IntrinsicWidth(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.6,
                            child: Text(
                              "Title" * 15,
                              maxLines: 2,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.circleXmark),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.heart),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextSubtitle(
                            label: "Price: 100.000 VND",
                          ),
                          Spacer(),
                          OutlinedButton.icon(
                            onPressed: () async {
                              await showModalBottomSheet(
                                  backgroundColor: AppColors.lightScaffoldColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  builder: (context) {
                                    return QuantityWidgets();
                                  },
                                  context: context);
                            },
                            label: Text("Qty: 6"),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
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
