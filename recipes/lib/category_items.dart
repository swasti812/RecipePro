import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/catewgory_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String categoryId;
  CategoryItem(this.color,this.title,this.categoryId);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {'id': categoryId,'title':title});

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectCategory(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding:const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(.7),color] ,begin: Alignment.topLeft,end: Alignment.bottomRight), borderRadius: BorderRadius.circular(15)),
      ),

    );
  }
}