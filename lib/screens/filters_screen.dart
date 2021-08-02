import 'package:flutter/material.dart';
class Filters extends StatefulWidget {
  static const routeName = '/filters';
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool _GlutenFree = false;
  bool _LactoseFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;
  Widget buildSwitchListTile(String title , String description , bool currentValue , Function updateValue){
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40,),
            child: Container(child:
              Text('Adjust your meal selection', style: Theme.of(context).textTheme.title,),),
          ),
          Expanded(child: ListView(children: <Widget>[
           buildSwitchListTile('Gluten-free', 'Only include Gluten-free meals', _GlutenFree, (newValue){
             setState(() {
               _GlutenFree = newValue;
             });
           }),
            buildSwitchListTile('Lactose-free', 'Only include Lactose-free meals', _LactoseFree, (newValue){
              setState(() {
                _LactoseFree = newValue;
              });
            }),
            buildSwitchListTile('Vegetarian-free', 'Only include Vegetarin-free meals', _Vegetarian, (newValue){
              setState(() {
                _Vegetarian = newValue;
              });
            }),
            buildSwitchListTile('Vegan-free', 'Only include Vegetarin-free meals', _Vegan, (newValue){
              setState(() {
                _Vegan = newValue;
              });
            }),
          ],),),
        ],
      )
    );
  }
}
