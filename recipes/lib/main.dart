import 'package:flutter/material.dart';
import 'package:recipes/catewgory_meals_screen.dart';
import 'categories_screen.dart';
import 'meal_detail_screen.dart';
import 'tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent[100],
        canvasColor: Color.fromRGBO(255,254, 229,1),
        fontFamily: 'Montserrat',

      ),
      //home: CategoriesScreen(),
      routes: {
        '/':(ctx)=>TabScreen(),
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(),
      MealDetailScreen.route:(ctx)=>MealDetailScreen()},
      //onGenerateRoute
      //onUnknownRoute
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
