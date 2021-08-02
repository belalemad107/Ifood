import 'package:flutter/material.dart';
import 'package:meal/screens/filters_screen.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildListTile(String text , IconData icon , Function tabHandler ){
      return ListTile(leading: Icon(icon,size: 26,),
        title: Text(text ,style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),),
        onTap: tabHandler,
      );
    }
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Cooking Up !',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).primaryColor,
            ),),
          ),
          SizedBox(height: 20,),
          _buildListTile('Meal', Icons.restaurant, (){Navigator.of(context).pushNamed('/');}),
          _buildListTile('Filters', Icons.settings, (){Navigator.of(context).pushNamed(Filters.routeName);})
        ],
      ),
    );
  }
}
