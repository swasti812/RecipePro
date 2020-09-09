import 'package:flutter/material.dart';
import 'package:recipes/favorites%20screen.dart';
import './categories_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List <Map<String,Object>> _pages =[{'page':CategoriesScreen(),'title':'Categories'},{'page':FavoritesScreen(),'title':'Favourites'}];
  int _selectedPageIndex=0;
  void _selectpage(int index){
  setState(() {
    _selectedPageIndex=index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title']),
        ),
        body:_pages[_selectedPageIndex]['page'],
    bottomNavigationBar:BottomNavigationBar(onTap: _selectpage,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.white,
      currentIndex: _selectedPageIndex,
      backgroundColor: Theme.of(context).primaryColorDark,items: [
      BottomNavigationBarItem(icon: Icon(Icons.category),title: Text('Categories')),
      BottomNavigationBarItem(icon: Icon(Icons.star),title: Text('Favourites')),
    ],) ,);
    //return DefaultTabController(length: 2,child:Scaffold(
      //appBar: AppBar(title: Text('Meals'), bottom: TabBar(tabs: <Widget> [
        //Tab(icon: Icon(Icons.category),
        //text:'Categories',),
        //Tab(icon: Icon(Icons.star),
          //text:'Favourites',),
      //]
      //),
      //),
     //body: TabBarView(children: [
       //CategoriesScreen(),FavoritesScreen()
     //],),

    //));
  }
}

