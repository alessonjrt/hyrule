import 'package:flutter/material.dart';
import 'package:hyrule/screens/results.dart';
import 'package:hyrule/utils/consts/categories.dart';

class Category extends StatelessWidget {
  final String category;
  const Category({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async => await Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => Results(category: category)),
          ),
          child: Ink(
            child: Image.asset("$imagePath$category.png"),
          ),
        ),
        Text(category)
      ],
    );
  }
}
