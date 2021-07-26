import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Rider_Home extends StatefulWidget {
  const Rider_Home({Key? key}) : super(key: key);

  @override
  _Rider_HomeState createState() => _Rider_HomeState();
}

class _Rider_HomeState extends State<Rider_Home> {
  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Wrap(
            children: [
              Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 115,
                              width: 115,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("images/profile.png"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ibrahim Hassan',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      color: Color(0xff00c853),
                      child: Text(
                        'Accept Order',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      // Within the `FirstRoute` widget
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      color: Colors.redAccent,
                      child: Text(
                        'Decline Order',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      // Within the `FirstRoute` widget
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'IbbiDope',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                accountEmail: Text(
                  'ibbidope@gmail.com',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/profile.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffE0E6EE),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "images/User Icon.svg",
                        width: 22,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "My Account",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffE0E6EE),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "images/Bell.svg",
                        width: 22,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffE0E6EE),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "images/Settings.svg",
                        width: 22,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffE0E6EE),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "images/Question mark.svg",
                        width: 22,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Help Center",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color(0xffE0E6EE),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "images/Log out.svg",
                        width: 22,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          actions: _buildActions(),
        ),
        body: GestureDetector(
          onTap: () {
            _bottomSheet(context);
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/map.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions() => <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          tooltip: 'Search',
          onPressed: () {},
        ),
      ];
}
