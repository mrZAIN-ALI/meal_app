import 'package:flutter/material.dart';
import 'category_Meal_Screen.dart';

import 'dummy_Data.dart';

class CategoryItem extends StatelessWidget {
 
  final catItemDetials;
  
  const CategoryItem({this.catItemDetials});
  void loadCategoryMEalPage(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder:(_) {
          return Category_Meal_Screen(catItemDetials);     
    }, ),);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(20),

      child: Container(
        child: Text(catItemDetials.title),
    
        padding: const  EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [catItemDetials.color.withOpacity(0.7),catItemDetials.color],
          
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
    
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    
      onTap: ()=> loadCategoryMEalPage(context),
    );
  }
}