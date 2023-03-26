import 'package:flutter/material.dart';
import '../widgets/main_Drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});
  static const routeName="/filters";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Text("Filters"),
      drawer: MainDrawer(),
    );
  }
}