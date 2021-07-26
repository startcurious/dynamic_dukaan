import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'vendor_nav.dart';
import 'vendor_signup.dart';

class Vendor_Login extends StatefulWidget {
  const Vendor_Login({Key? key}) : super(key: key);

  @override
  _Vendor_LoginState createState() => _Vendor_LoginState();
}

class _Vendor_LoginState extends State<Vendor_Login> {
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
          title: Text('Login'),
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
                  'Signin to continue!',
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
                height: size.height / 10,
              ),
              customButton(size),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Vendor_Signup(),
                  ),
                ),
                child: Text(
                  "Create an account",
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
          builder: (_) => Vendor_Nav(),
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
          "Login",
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
