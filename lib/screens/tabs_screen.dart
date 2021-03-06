import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import './favorites_Screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>>_page=[
    {
     'page':CategoriesScreen(),
      'title': 'Categories',
    },
    {
     'page':FavoriteScreen(),
      'title': 'Your Favorite',
    },

  ];
  int _selectedPageIndex=0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex= index;
    });

  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(title:Text(_page[_selectedPageIndex]['title']),),
     drawer: MainDrawer(),
     body:_page[_selectedPageIndex]['page'],
     bottomNavigationBar: BottomNavigationBar(
       onTap: _selectPage,
     backgroundColor: Theme.of(context).primaryColor,
     unselectedItemColor: Colors.white,
     selectedItemColor: Theme.of(context).accentColor,
     currentIndex: _selectedPageIndex,

     items: [
      BottomNavigationBarItem(
        icon:Icon(Icons.category),
        title: Text('Categories'),

      
      ),
       BottomNavigationBarItem(
        icon:Icon(Icons.star),
        title: Text('Favorite'),
         
      
      ),





     ]),

     );


    
  }
}