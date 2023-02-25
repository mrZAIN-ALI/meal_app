import 'package:flutter/material.dart';

class Category_Meal_Screen extends StatelessWidget {
  // const Category_Meal_Screen({super.key});
  final categoryItemDetails;
  
  Category_Meal_Screen(this.categoryItemDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryItemDetails.title),
      ),
      body: Center(
        child:  
        Container(child: Text("Hello"),
          // color: Theme.of(context).colorScheme.primary,  
          color:categoryItemDetails.color,
        ),
      ),
    );
  }
}
