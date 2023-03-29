import 'package:flutter/material.dart';
import '../widgets/main_Drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});
  static const routeName="/filters";

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _gluteenFree=false;
  bool _lactoseFree=false;
  bool _vegetarian=false;
  bool _vegan=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Adjust your meal Selections",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            padding: EdgeInsets.all(20),
            
          ),

          Expanded(child: ListView(
            children: [
              SwitchListTile(value: , onChanged: onChanged)
            ],
          ),),  
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}