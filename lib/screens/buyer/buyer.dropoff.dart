import 'package:flutter/material.dart';

class Buyer_Dropoff extends StatefulWidget {
  const Buyer_Dropoff({Key? key}) : super(key: key);

  @override
  _Buyer_DropoffState createState() => _Buyer_DropoffState();
}

class _Buyer_DropoffState extends State<Buyer_Dropoff> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Select Dropoff'),
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
