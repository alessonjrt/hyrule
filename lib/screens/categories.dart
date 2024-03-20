import 'package:flutter/material.dart';
import 'package:hyrule/screens/components/category.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Escolha uma categoria"),
            centerTitle: true), // AppBar
        body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
            children: const [Category(category: "monsters")]),
      ), // Scaffold
    ); // SafeArea
  }
}
