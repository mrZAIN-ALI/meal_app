import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/main_Drawer.dart';
import 'categories_Screen.dart';
import 'favouritesScreen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {

  final List<Map<String,dynamic>> _ListOfWidgets=[
    {"page" : CategoriesScreen(),
      "title" : "Categories",
    },

    {"page" : FavouritesScreen(),
      "title" : "Favourite",
    }
  ];
  int _selectedIndex=0;
  void selectPage(int index){
    setState(() {
      _selectedIndex=index;
    });    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_ListOfWidgets[_selectedIndex]["title"] as String,),
      ),
      drawer: MainDrawer(),
      body: _ListOfWidgets[_selectedIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,

        items: const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites",
          ),

        ],

        onTap: selectPage,
      ),
    );
  }
}
