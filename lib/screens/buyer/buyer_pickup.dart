import 'package:flutter/material.dart';

class Buyer_Pickup extends StatefulWidget {
  const Buyer_Pickup({Key? key}) : super(key: key);

  @override
  _Buyer_PickupState createState() => _Buyer_PickupState();
}

class _Buyer_PickupState extends State<Buyer_Pickup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Select Pickup'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/map.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: null /* add child content here */,
        ),
      ),
    );
  }
}
