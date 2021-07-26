import 'package:dynamic_dukaan/screens/vendor/shop_items.dart';
import 'package:dynamic_dukaan/screens/vendor/vendor_home.dart';
import 'package:flutter/material.dart';

class Vendor_Nav extends StatefulWidget {
  const Vendor_Nav({Key? key}) : super(key: key);

  @override
  _Vendor_NavState createState() => _Vendor_NavState();
}

class _Vendor_NavState extends State<Vendor_Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Vendor_Home(),
    Shop_Items(),
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
              icon: Icon(Icons.store_mall_directory_outlined),
              title: Text(
                'Items',
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
