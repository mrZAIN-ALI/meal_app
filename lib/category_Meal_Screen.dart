import 'package:flutter/material.dart';

class Category_Meal_Screen extends StatelessWidget {
  // const Category_Meal_Screen({super.key});
  // final categoryItemDetails;
  
  Category_Meal_Screen();

  @override
  Widget build(BuildContext context) {

    var routeArgs_CatDetails = ModalRoute.of(context)!.settings.arguments as Map <String,String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs_CatDetails["title"]!),
      ),
      body: Center(
        child:  
        Container(child: Text("Hello"),
          // color: Theme.of(context).colorScheme.primary,  
          color:(routeArgs_CatDetails["color"] as Color),
        ),
      ),
    );
  }
}
