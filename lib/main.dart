import 'package:flutter/material.dart';
import './screens/categories_Screen.dart';

import './screens/category_Meal_Screen.dart';

void main() {
  runApp( mealApp());
}

class mealApp extends StatelessWidget {

  // This widget is the root of your application.
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
            color:Colors.white,
            fontFamily: 'RobotoCondensed',
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',      
          )
        ),
      ),
      // home: CategoriesScreen(),

      routes: {
        "/": (_) => CategoriesScreen(),
        "/cat-meal-Screen":(_) => Category_Meal_Screen() 
      },
    );
  }
}

