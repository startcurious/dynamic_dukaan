import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Create Shop',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Update Shop',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Delete Shop',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Shop Revenue',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Shop Details',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xff884cc83),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/calendar.png',
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Shop Revenue',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
