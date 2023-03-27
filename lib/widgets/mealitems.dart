import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  void loadMeal() {
    Navigator.of(context).pushNamed(routeName);
  }

  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  String get complexityText {
    // return complexity.toString();

    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
        break;

      case Complexity.Medium:
        return "Medium";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "Unknown";
    }
  }

  String get affordabilityText {
    // return affordability.toString();

    switch (affordability) {
      case Affordability.affordable:
        return "Affordable";
        break;

      case Affordability.luxrious:
        return "Luxroius";
        break;
      case Affordability.pricy:
        return "Expensive";
        break;
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: InkWell(
        onTap: loadMeal,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Stack(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(
                    (20),
                  ),
                ),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 5,
                child: Container(
                  width: 300,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.black54),
                    softWrap: true,
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$duration minutes",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${complexityText.toString()} minutes",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                      // Text("HEllo"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${affordabilityText.toString()}",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                      // Text("HEllo"),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
