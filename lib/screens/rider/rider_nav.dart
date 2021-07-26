import 'package:flutter/material.dart';

import 'rider_home.dart';

class Rider_Nav extends StatefulWidget {
  const Rider_Nav({Key? key}) : super(key: key);

  @override
  _Rider_NavState createState() => _Rider_NavState();
}

class _Rider_NavState extends State<Rider_Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Rider_Home(),
    Rider_Home(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff884cc83),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_outlined),
              title: Text(
                'Revenue',
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          selectedFontSize: 13.0,
          unselectedFontSize: 13.0,
          selectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
