import 'package:flutter/material.dart';

class QuantityWidgets extends StatelessWidget {
  const QuantityWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 6,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${index + 1}"),
                ),
              ),
            ),
            itemCount: 25,
          ),
        ),
      ],
    );
  }
}
