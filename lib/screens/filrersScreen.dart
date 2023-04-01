import 'package:flutter/material.dart';
import '../widgets/main_Drawer.dart';

class FiltersScreen extends StatefulWidget {
  // const FiltersScreen({super.key});

  final Function _saveFilters;
  static const routeName = "/filters";
  FiltersScreen(this._saveFilters);
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vagetarian = false;
  var _vegan = false;

  Widget _buildSwitchListTile(String title, String subTitle,
      bool currentBoolean, Function setNewState) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: currentBoolean,
      onChanged: (value) {
        setNewState(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filters"),
          actions: [
            IconButton(
              onPressed: () {
                final selected_filter = {
                  "gluten": _glutenFree,
                  "lactose": _lactoseFree,
                  "vegan": _vegan,
                  "vegetarain": _vagetarian
                };
                widget._saveFilters(selected_filter);
              },
              icon: Icon(Icons.save_outlined),
            )
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Filter Your Desire Meals",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSwitchListTile(
                    "Gluten",
                    "Display Gluteen Free Meals",
                    _glutenFree,
                    (flag) {
                      setState(
                        () {
                          _glutenFree = flag;
                        },
                      );
                    },
                  ),
                  Divider(),
                  _buildSwitchListTile(
                    "Lactose",
                    "Display Lactose Free Meals",
                    _lactoseFree,
                    (flag) {
                      setState(
                        () {
                          _lactoseFree = flag;
                        },
                      );
                    },
                  ),
                  Divider(),
                  _buildSwitchListTile(
                    "Vegetarian",
                    "Display Vegetarian Meals",
                    _vagetarian,
                    (flag) {
                      setState(
                        () {
                          _vagetarian = flag;
                        },
                      );
                    },
                  ),
                  Divider(),
                  _buildSwitchListTile(
                    "Vegan",
                    "Display Vagen Meals",
                    _vegan,
                    (flag) {
                      setState(
                        () {
                          _vegan = flag;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
