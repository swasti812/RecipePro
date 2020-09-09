import 'package:flutter/material.dart';
import './models/meal.dart';
import 'dummy_data.dart';
import 'meal.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const routeName='-/category-meals';
  //final String categoryId;
  //final String title;
  //CategoryMealsScreen(this.categoryId,this.title);

  @override
  Widget build(BuildContext context) {
    final routeargs= ModalRoute.of(context).settings.arguments as Map<String,String>;
    final title = routeargs['title'];
    final ID= routeargs['id'];
    final categorymeals= DUMMY_MEALS.where((meal){
      return meal.categories.contains(ID);
    }).toList();
    return Scaffold(
      appBar: AppBar( title: Text(title),) ,
       body:ListView.builder(itemBuilder: (ctx,index) {
       return MealItem(id:categorymeals[index].id,title: categorymeals[index].title, affordability: categorymeals[index].affordability, complexity: categorymeals[index].complexity, imageUrl: categorymeals[index].imageUrl, duration: categorymeals[index].duration);
       },itemCount: categorymeals.length ,)
    );
  }
}
