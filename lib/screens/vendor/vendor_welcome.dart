import 'package:dynamic_dukaan/screens/vendor/vendor_login.dart';
import 'package:dynamic_dukaan/screens/vendor/vendor_nav.dart';
import 'package:dynamic_dukaan/screens/vendor/vendor_signup.dart';
import 'package:flutter/material.dart';

class Vendor_Welcome extends StatelessWidget {
  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Wrap(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'images/google_logo.png',
                        height: 30,
                      ),
                      title: Text(
                        'Login with Google',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'images/facebook_logo.png',
                        height: 30,
                      ),
                      title: Text(
                        'Login with Facebook',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Login with Email',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Vendor_Login()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Column(
            children: [
              FlatButton(
                  color: Color(0xff00c853),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Vendor_Signup(),
                      ),
                    );
                  }),
              FlatButton(
                child: RichText(
                  text: TextSpan(
                      text: 'Already a vendor? ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00c853),
                          ),
                        )
                      ]),
                ),
                onPressed: () {
                  _bottomSheet(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
