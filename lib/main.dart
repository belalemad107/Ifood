import 'package:flutter/material.dart';
import 'package:meal/screens/category_meals_screen.dart';
import 'package:meal/screens/category_screen.dart';
import 'package:meal/screens/category_meals_screen.dart';
import 'package:meal/Home.dart';
import 'package:meal/screens/filters_screen.dart';
import 'package:meal/screens/meal_detail_screen.dart';
import 'package:meal/screens/tabs_screen.dart';
import 'package:meal/screens/filters_screen.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255,254,229,1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(),
          body2: TextStyle(),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
      // home: Categories(),
      routes: {
        '/':(context) => TabsScreen(),
        CategoryMealsScreen.routeName :(context) => CategoryMealsScreen(),
        MealDetailScreen.routeName :(context) => MealDetailScreen(),
        Filters.routeName : (context) => Filters(),
      },
      title: 'Meal',
    );
  }
}
