import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/widgets/meal_item.dart';
class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category_meals';
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final categoryMeals = DUMMY_MEALS.where((Meal)
    {
      return Meal.categories.contains(categoryId);
    }
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (context,index){
       return MealItem(
         id: categoryMeals[index].id,
         imageUrl: categoryMeals[index].imageUrl,
         complexity: categoryMeals[index].complexity,
         title: categoryMeals[index].title,
         duration: categoryMeals[index].duration,
         affordability: categoryMeals[index].affordability,
       );
      },
      itemCount: categoryMeals.length,
      ),
    );
  }
}
