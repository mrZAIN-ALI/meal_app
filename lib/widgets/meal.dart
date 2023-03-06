import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  void loadMeal()
  {

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loadMeal,

      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        elevation: 5,
        margin: EdgeInsets.all(10),

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular((20),),),

              // child: Image.network(src),
            ),
          ],
        ),
      ),
    );
  }
}