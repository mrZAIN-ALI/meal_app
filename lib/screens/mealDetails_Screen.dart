import 'package:flutter/material.dart';
import '../dummy_Data.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});
  static const routeName = "/meal-details";

  Widget buildSectionTitle(BuildContext context,String text){
    return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "$text",
              style: Theme.of(context).textTheme.titleLarge,
            ),
    );
  }
  Widget buildContainer(Widget child)
  {
    return Container(
      height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const  [
                BoxShadow (
                  offset: Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black26,
                ),
              ],
            ),
      child: child,
    );
  }
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final dummySelectedMealData =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    // return Center(child: Text("Hello juello - $mealId "),);
    return Scaffold(
      appBar: AppBar(
        title: Text("${dummySelectedMealData.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(dummySelectedMealData.imageUrl),
            ),
           buildSectionTitle(context,"INGREDIENTS"),
            buildContainer(           
              ListView.builder(
                itemCount: dummySelectedMealData.ingredients.length,
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).colorScheme.primary,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      dummySelectedMealData.ingredients[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ),
           buildSectionTitle(context,"STEPS"),
           buildContainer(
            ListView.builder(itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text( "# ${index+1}" ,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    dummySelectedMealData.steps[index]
                  ),
                ),

                Divider(),
              ],
            ),
            itemCount: dummySelectedMealData.steps.length,
            )
           ),
           
           SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
