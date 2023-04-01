import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class FavouritesScreen extends StatelessWidget {

  final List<Meal> _favoritedMeals;

  FavouritesScreen(this._favoritedMeals);
  
  @override
  Widget build(BuildContext context) {
    return const Center(child:
      Text("Favorites"),
    );
  }
}