import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // list of widgets to be included in the navbar tabs
  final List<Map<String, dynamic>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorites',
    },
  ];

  // variable for tracking which tab is selected, default first tab
  int _selectedPageIndex = 0;

  // func for the onTap of the bottom tab bar nav
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      // output specific screen depending on index from _selectPage onTap method
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // selectedFontSize & unSelectedFontSize already have default values
        // selectedFontSize: 20,
        // unselectedFontSize: 16,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            // with type: BottomNavigtionBarType.shifting you have to
            // set the backgroundColor of each individual navbar item
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            // with type: BottomNavigtionBarType.shifting you have to
            // set the backgroundColor of each individual navbar item
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );

    // Below is the Tab controller for a tab bar at the top of the screen
    // DefaultTabController(
    //   length: 2,
    //   initialIndex: 0, // could be set to 1 to make 2nd tab the default
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Meals'),
    //       bottom: TabBar(
    //         tabs: <Widget>[
    //           Tab(icon: Icon(Icons.category), text: 'Categories'),
    //           Tab(icon: Icon(Icons.star), text: 'Favorites'),
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(children: <Widget>[
    //       CategoriesScreen(),
    //       FavoritesScreen(),
    //     ],),
    //   ),
    // );
  }
}
