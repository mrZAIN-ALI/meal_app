import 'package:flutter/material.dart';
import 'category_Meal_Screen.dart';

import 'dummy_Data.dart';

class CategoryItem extends StatelessWidget {

  final id;
  final title;
  final color;

  const CategoryItem({this.id, this.title,this.color});
  void loadCategoryMEalPage(BuildContext ctx)
  {
    Navigator.of(ctx).pushNamed("/cat-meal-Screen",arguments: {"id" :id, "title" : title});
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(20),

      child: Container(
        child: Text(title),
    
        padding: const  EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color.withOpacity(0.7),color],
          
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