
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/icons.dart';
import '../constants/size.dart';
import 'featuerd_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const[
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.star),
              icon:Icon(Icons.star_outline),
              label: "Featured",
            ),
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.school),
              icon: Icon(Icons.school_outlined),
              label: "My Learning",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_outline),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              activeIcon:Icon(Icons.settings),
              icon:Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
