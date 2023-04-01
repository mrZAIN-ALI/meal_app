import 'package:flutter/material.dart';

import '../widgets/mealitems.dart';
import '../dummy_Data.dart';
import '../models/meal.dart';

class Category_Meal_Screen extends StatefulWidget {
  // const Category_Meal_Screen({super.key});
  // final categoryItemDetails;
  static const routeName = '/category-meals';
  final _filteredMeals;
  Category_Meal_Screen(this._filteredMeals);

  @override
  State<Category_Meal_Screen> createState() => _Category_Meal_ScreenState();
}

class _Category_Meal_ScreenState extends State<Category_Meal_Screen> {
  String categoryTitle = " ";
  List<Meal> displayedMeal = [];
  bool _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs_CatDetails =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      final categoryId = routeArgs_CatDetails["id"];
      categoryTitle = routeArgs_CatDetails["title"] as String;

      displayedMeal = widget._filteredMeals.where(
        (Meal m) {
          return m.categories.contains(categoryId);
        },
      ).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeal.removeWhere(
        (meal) => meal.id == mealId,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: displayedMeal.isEmpty
          ? Center(child: Text('No meals found'))
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: displayedMeal[index].id,
                  title: displayedMeal[index].title,
                  imageUrl: displayedMeal[index].imageUrl,
                  duration: displayedMeal[index].duration,
                  complexity: displayedMeal[index].complexity,
                  affordability: displayedMeal[index].affordability,
                );
              },
              itemCount: displayedMeal.length,
            ),
    );
  }
}
