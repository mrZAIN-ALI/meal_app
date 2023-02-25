import 'package:flutter/material.dart';

import 'categories_Screen.dart';

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

        colorScheme:ColorScheme(
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
        textTheme: TextTheme(
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
      home: CategoriesScreen(),
    );
  }
}

