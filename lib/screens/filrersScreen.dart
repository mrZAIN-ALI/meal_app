import 'package:flutter/material.dart';
import '../widgets/main_Drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});
  static const routeName = "/filters";

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _gluteenFree = false;
  bool _lactoseFree = false;
  bool _vegetarian = false;
  bool _vegan = false;

  Widget _buildSwitchListTIle(String title, String subTitile, bool currentVal,
      Function updateBoolValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitile),
      value: currentVal,
      onChanged: (value) {
        updateBoolValue(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Adjust your meal Selections",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            padding: EdgeInsets.all(20),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTIle(
                  "Gluten Free",
                  "Include only Gluten Free Meals",
                  _gluteenFree,
                  (value) => {
                    setState(
                      () {
                        _gluteenFree = value;
                      },
                    ),
                  },
                ),
                _buildSwitchListTIle(
                  "Lactose Free",
                  "Include only Lactose Free Meals",
                  _lactoseFree,
                  (value) => {
                    setState(
                      () {
                        _lactoseFree = value;
                      },
                    ),
                  },
                ),
                _buildSwitchListTIle(
                  "Vegetarain",
                  "Include only Vegetrain meals",
                  _vegetarian,
                  (value) => {
                    setState(
                      () {
                        _vegetarian = value;
                      },
                    ),
                  },
                ),
                _buildSwitchListTIle(
                  "Vegan",
                  "Include only Vegan Meals",
                  _vegan,
                  (value) => {
                    setState(
                      () {
                        _vegan = value;
                      },
                    ),
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
