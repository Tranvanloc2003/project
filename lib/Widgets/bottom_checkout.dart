import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class BottomCheckout extends StatelessWidget {
  const BottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: SizedBox(
        height: kBottomNavigationBarHeight + 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text("6 sản phẩm trên 9 số lượng:"),
                    ),
                    Text("16.0\$", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text("Thanh toán"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
