import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/models/meal.dart';
import 'meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem({@required this.id,@required this.title,@required this.affordability,@required this.complexity,@required this.imageUrl,@required this.duration });
  String get complexitytext{
    if(complexity== Complexity.Simple)
      return 'Simple';
    if(complexity==Complexity.Challenging)
      return 'Challenging';
    if(complexity==Complexity.Hard)
       return 'Hard';
  }
  void selectMeal(BuildContext ctx){
    Navigator.of(ctx).pushNamed(MealDetailScreen.route,arguments:id );
  }
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()=> selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,margin: EdgeInsets.all(10),
          child: Column(children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),

                  ),
                  child: Image.network(imageUrl,height: 250,width: double.infinity,fit: BoxFit.cover,) ,
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width:300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    child: Text(title, style: TextStyle(
                      color: Colors.white,
                      fontSize: 26
                    ),
                      softWrap: true,
                      overflow: TextOverflow.fade,

                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [
                  Icon(Icons.schedule),
                  SizedBox(width: 6,),
                  Text('$duration')
                ],),
                Row(

             children: [
                  Icon(Icons.work),
                  SizedBox(width: 6,),
                  Text(complexitytext),

                ],
                )
              ],),
            )
        ],),
      ),
    );
  }
}
