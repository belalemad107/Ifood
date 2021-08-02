import 'package:flutter/material.dart';
import 'package:meal/screens/category_meals_screen.dart';
import 'package:meal/screens/category_screen.dart';
import 'package:meal/screens/favourite_screen.dart';
import 'package:meal/widgets/main_drawer.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String,Object>>_pages=[
    {
      'page' : Categories(),
      'title' : 'Categories',
    },
    {
      'page' : FavouriteScreen(),
      'title' : 'Favourites',
    }
  ];
  int _selectedPageIndex = 0 ;
  _selectPage(int value){
    setState(() {
      _selectedPageIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Cateogries'),
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            title: Text('Favourites'),
            icon: Icon(Icons.star),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
