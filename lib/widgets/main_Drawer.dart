import 'package:flutter/material.dart';

import "../screens/filrersScreen.dart";

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  ListTile listTileBuilder(
      String title, IconData icon, Function loadSelectedPage) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        loadSelectedPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 16.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Theme.of(context).colorScheme.primary,
              ),
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Cooking up",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            listTileBuilder(
              "Meal",
              Icons.restaurant,
              () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
            listTileBuilder(
              "Filter",
              Icons.settings,
              () {
                Navigator.of(context)
                    .pushReplacementNamed(FiltersScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
