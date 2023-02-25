import 'package:flutter/material.dart';
import 'package:meal_app/categoryItem.dart';

import 'dummy_Data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(id: catData.id,title: catData.title,color: catData.color,),
            ).toList() ,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
