import 'package:flutter/material.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.btnText,
      required this.imagePath,
      required this.function});
  final String title, subTitle, btnText, imagePath;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(imagePath, height: 200, width: 200, fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          TextTitle(label: title),
          SizedBox(
            height: 10,
          ),
          TextSubtitle(label: subTitle),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: function(),
            child: Text(btnText, style: TextStyle(color: Colors.white)),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
