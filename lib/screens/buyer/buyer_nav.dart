import 'package:dynamic_dukaan/screens/buyer/buyer_home.dart';
import 'package:dynamic_dukaan/screens/buyer/buyer_pickup.dart';
import 'package:flutter/material.dart';

class Buyer_Nav extends StatefulWidget {
  const Buyer_Nav({Key? key}) : super(key: key);

  @override
  _Buyer_NavState createState() => _Buyer_NavState();
}

class _Buyer_NavState extends State<Buyer_Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Buyer_Home(),
    Buyer_Pickup(),
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
              icon: Icon(
                Icons.add_location_alt_outlined,
              ),
              title: Text(
                'Address',
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
