import 'package:flutter/material.dart';
import 'package:project_appbanhang/Widgets/cart_widgets.dart';
import 'package:project_appbanhang/Widgets/logo_widgets.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';
import 'package:project_appbanhang/const/app_constans.dart';

import '../Widgets/appbar_widgets.dart';
import '../Widgets/bottom_checkout.dart';
import '../Widgets/empty_bag.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(text: "Giỏ hàng có 0 sản phẩm"),
        // body: EmptyBag(
        //   imagePath: AppConstans.shoppingBasket,
        //   title: "Giỏ hàng của bạn đang trống",
        //   btnText: "Mua sắm ngay",
        //   subTitle: "Hãy thêm sản phẩm vào giỏ hàng và làm tôi hạnh phúc",
        //   function: () {},
        // ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => CartWidgets(),
              ),
            ),
            BottomCheckout(),
          ],
        ),
      ),
    );
  }
}
