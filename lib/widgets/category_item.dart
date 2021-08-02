import 'package:flutter/material.dart';
import 'package:meal/screens/category_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  final String id ;
  final String title;
  final Color color;
  CategoryItem(this.id,this.title,this.color);
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
    arguments: {
      'id' : id,
      'title':title,
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Text(title,style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
          colors: [
            color.withOpacity(0.4),
            color,
          ]
        )),
        padding: EdgeInsets.all(15),
      ),
    );
  }
}
