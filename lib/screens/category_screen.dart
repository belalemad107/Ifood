import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
import 'package:meal/widgets/category_item.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        children:
        DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id,catData.title,catData.color,),).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
