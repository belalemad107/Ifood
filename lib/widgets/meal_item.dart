import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/meal_detail_screen.dart';
class MealItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final String title;
  final Affordability affordability;
  String get complexityText{
    switch(complexity){
      case Complexity.Simple : return 'Simple';break;
      case Complexity.Challenging : return 'Challenging';break;
      case Complexity.Hard : return 'Hard';break;
    }
  }
  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable : return 'Simple';break;
      case Affordability.Pricey : return 'Challenging';break;
      case Affordability.Luxurious : return 'Hard';break;
    }
  }

  const MealItem({
    @required this.id,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.title,
    @required this.affordability
  });
  void selectMeal(BuildContext ctx){
     Navigator.of(ctx).pushNamed(MealDetailScreen.routeName,
     arguments: id,
     );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : ()=> selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                ),
                child: Image.network(imageUrl,width: double.infinity,fit: BoxFit.cover,height: 200,),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  color: Colors.black54,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,style: TextStyle(color: Colors.white,fontSize: 26),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                ),
              )
            ],),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 6,),
                    Text('$duration min'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6,),
                    Text(complexityText),
                  ],
                ),
                Row(children: <Widget>[
                  Icon(Icons.attach_money),
                  SizedBox(width: 6,),
                  Text(affordabilityText),
                ],),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
