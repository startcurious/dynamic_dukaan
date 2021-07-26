import 'package:dynamic_dukaan/screens/rider/rider_welcome.dart';
import 'package:dynamic_dukaan/screens/vendor/vendor_welcome.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'buyer/buyer_welcome.dart';

class OnBoard_Screen extends StatefulWidget {
  const OnBoard_Screen({Key? key}) : super(key: key);

  @override
  _OnBoard_ScreenState createState() => _OnBoard_ScreenState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    children: [
      Expanded(
        child: Image.asset('images/buyer_logo.jpg'),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
          Text('.',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Groceries at Your Doorstep',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Ready to order from your nearest shop?',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      Buyer_Welcome(),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: Image.asset('images/vendor_logo.jpg'),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
          Text('.',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Become an Online Vendor',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Ready to Sell on Dynamic Dukaan?',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      Vendor_Welcome(),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: Image.asset('images/rider_logo.jpg'),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
          Text('.',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Become a Rider',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Ready to Deliver Orders?',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      Rider_Welcome(),
    ],
  ),
];

class _OnBoard_ScreenState extends State<OnBoard_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: _pages,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
            DotsIndicator(
              dotsCount: _pages.length,
              position: _currentPage.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeColor: Color(0xff00c853),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
