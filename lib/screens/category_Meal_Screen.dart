import 'package:flutter/material.dart';

import '../widgets/mealitems.dart';
import '../dummy_Data.dart';
import '../models/meal.dart';

class Category_Meal_Screen extends StatefulWidget {
  // const Category_Meal_Screen({super.key});
  // final categoryItemDetails;

  Category_Meal_Screen();

  @override
  State<Category_Meal_Screen> createState() => _Category_Meal_ScreenState();
}

class _Category_Meal_ScreenState extends State<Category_Meal_Screen> {
  
  String categoryTitle=" ";
  late List<Meal> displayedMeal;
  bool _loadedInitData = false;
  @override
  Widget build(BuildContext context) {
    
    @override
    void initState() {
    }

    @override
    void didChangeDependencies(){
      if(!_loadedInitData){
        final routeArgs_CatDetails =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        final categoryId = routeArgs_CatDetails["id"];
        final categoryTitle = routeArgs_CatDetails["title"] as String;

        final displayedMeal = DUMMY_MEALS.where(
          (m) {
            return m.categories.contains(categoryId);
          },
        ).toList();      
        _loadedInitData=true;
      }
    }
    void _removeMeal(String mealId) {
      setState(() {
        displayedMeal.removeWhere((meal) => meal.id==mealId,);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: displayedMeal[index].id,
              title: displayedMeal[index].title,
              imageUrl: displayedMeal[index].imageUrl,
              duration: displayedMeal[index].duration,
              complexity: displayedMeal[index].complexity,
              affordability: displayedMeal[index].affordability,
              deleteMeal: _removeMeal,              
              );
        },
        itemCount: displayedMeal.length,
      ),
    );
  }
}
