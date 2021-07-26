import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'vendor_login.dart';

class Vendor_Signup extends StatefulWidget {
  const Vendor_Signup({Key? key}) : super(key: key);

  @override
  _Vendor_SignupState createState() => _Vendor_SignupState();
}

class _Vendor_SignupState extends State<Vendor_Signup> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Signup'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: size.width / 1.3,
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width / 1.3,
                child: Text(
                  'Signup to continue!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, "Name", Icons.account_box, _name),
                ),
              ),
              Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(size, "Email", Icons.account_box, _email),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, "Password", Icons.lock, _password),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              customButton(size),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Vendor_Login(),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff00c853),
        ),
        child: Text(
          "Signup",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.3,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
