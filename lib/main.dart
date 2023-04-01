import 'package:flutter/material.dart';
import 'package:meal_app/dummy_Data.dart';
import 'package:meal_app/screens/filrersScreen.dart';

import './models/meal.dart';
import 'dummy_Data.dart';
import '../screens/tabBarScree.dart';
import './screens/categories_Screen.dart';
import './screens/category_Meal_Screen.dart';
import './screens/mealDetails_Screen.dart';
// import '../screens/FiltersScreen.dart';

void main() {
  runApp( mealApp());
}

class mealApp extends StatefulWidget {

  @override
  State<mealApp> createState() => _mealAppState();
}

class _mealAppState extends State<mealApp> {
  // This widget is the root of your application.

  Map<String,bool> filters={
    "gluten":false,
    "lactose":false,
    "vegan":false,
    "vegetarain":false
  };
  List<Meal> _availableMeals=DUMMY_MEALS;
  List<Meal> _favoritedMeals=[];
  void _setFilters(Map<String,bool> providedMap){
    setState(() {
      filters=providedMap;

      _availableMeals=DUMMY_MEALS.where((meal) {
        if(filters["gluten"]! && !meal.isGlutenFree){
          return false;
        }
         if(filters["lactose"] ! && !meal.isLactoseFree){
          return false;
        }
         if(filters["vegetarain"] ! && !meal.isVeg){
          return false;
        }
         if(filters["vegan"] ! && !meal.isVegan){
          return false;
        }
        return true;
      },).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black,
        // primary: Colors.red),
        // primarySwatch: Colors.red,
        // colorScheme: Colors.black, //accentColor
        // canvasColor: Colors.red,

        colorScheme:const ColorScheme(
            primary: Colors.red,
            
            secondary: Colors.black,
            
            surface: Colors.white,
            background: Colors.grey,
            error: Colors.red,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.black,
            onBackground: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
        ),
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'RobotoCondensed',
            
          ),
           bodyMedium: TextStyle(
            fontSize: 20,
            color:Colors.black,
            fontFamily: 'Raleway-Bold',
          ),
           bodySmall: TextStyle(
            // fontSize: 20,
            color:Colors.black,
            fontFamily: 'RobotoCondensed',
          ),
          titleLarge: TextStyle(
            fontSize: 30,
            fontFamily: 'Raleway-Bold',      
            color: Colors.black,
          )
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        "/": (_) => TabBarScreen(_favoritedMeals),
        "/cat-meal-Screen":(_) => Category_Meal_Screen(_availableMeals) ,
        MealDetailsScreen.routeName:(_) =>MealDetailsScreen(),
        FiltersScreen.routeName:(_)=>FiltersScreen(_setFilters),  
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Category_Meal_Screen(_availableMeals),);
      },
    );
  }
}

