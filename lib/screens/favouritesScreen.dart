import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

import '../widgets/mealitems.dart';
class FavouritesScreen extends StatelessWidget {
  final List<Meal> _favoritedMeals;

  FavouritesScreen(this._favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoritedMeals.isEmpty) {
      return const Center(
        child: Text("Favorites"),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: _favoritedMeals[index].id,
              title: _favoritedMeals[index].title,
              imageUrl: _favoritedMeals[index].imageUrl,
              duration: _favoritedMeals[index].duration,
              complexity: _favoritedMeals[index].complexity,
              affordability: _favoritedMeals[index].affordability,            
          );
        },
        itemCount: _favoritedMeals.length,
      );
    }
  }
}
