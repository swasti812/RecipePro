import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';
class MealDetailScreen extends StatelessWidget {
  static const route='-/Mealsdetailscreen';

  @override
  Widget build(BuildContext context) {
    final argid=ModalRoute.of(context).settings.arguments as String;
    final SelectedMeal= DUMMY_MEALS.firstWhere((meal) => (meal.id==argid));
    return Scaffold(
      appBar: AppBar(
        title: Text('${SelectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300 ,
              child: ClipRRect(
              borderRadius: BorderRadius.only(
    bottomLeft:Radius.circular(15) ,
    bottomRight: Radius.circular(15),
    ),
                child: Image.network(SelectedMeal.imageUrl,
                fit: BoxFit.cover),
              ),


            ),
            Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Text('INGREDIENTS'),
    ),
    Container(
        decoration: BoxDecoration(color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10)),
    height: 150,
    width: 300,
    child: ListView.builder(itemCount: SelectedMeal.ingredients.length,itemBuilder: (ctx,index)=>
          Card(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 10),
              child: Text(SelectedMeal.ingredients[index]),
            ),
          )
    )
    ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text('STEPS'),
          ),
          Container(
              decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: 150,
              width: 300,
              child: ListView.builder(itemCount: SelectedMeal.steps.length,itemBuilder: (ctx,index)=>
                  ListTile(
                    leading: CircleAvatar(child: Text('# ${(index+1)}',),
                  ),
                        title:Text(SelectedMeal.steps[index]),
              )
        )
    )]),
      ));
  }
}
