import 'package:flutter/material.dart';

import '../widgets/mealitems.dart';
import '../dummy_Data.dart';
class Category_Meal_Screen extends StatelessWidget {
  // const Category_Meal_Screen({super.key});
  // final categoryItemDetails;
  
  Category_Meal_Screen();

  @override
  Widget build(BuildContext context) {

    final routeArgs_CatDetails  = ModalRoute.of(context)!.settings.arguments as Map <String,dynamic>;
    final categoryId=routeArgs_CatDetails["id"];
    final categoryTitle=routeArgs_CatDetails["title"] as String;

    final categoryMEal = DUMMY_MEALS.where((m){
      return m.categories.contains(categoryId);
    },).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),

      body: ListView.builder(itemBuilder: (ctx, index) {
        return MealItem(title: categoryMEal[index].title,
         imageUrl:categoryMEal[index].imageUrl ,
         duration: categoryMEal[index].duration,
         complexity: categoryMEal[index].complexity, 
         affordability: categoryMEal[index].affordability
        );
      },itemCount: categoryMEal.length,) ,
    );
  }
}
