import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProducts_Tile extends StatelessWidget {
  final Color color;
  final String title;
  final String assetPath;
  final String price;

  const TopProducts_Tile(
      {Key? key,
      required this.color,
      required this.title,
      required this.assetPath,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      height: 200,
      width: 150,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  this.assetPath,
                  height: 80,
                  width: 80,
                ),
                Text(
                  this.title,
                  style: GoogleFonts.varelaRound(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  this.price,
                  style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  this.assetPath,
                  height: 80,
                  width: 80,
                ),
                Text(
                  this.title,
                  style: GoogleFonts.varelaRound(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  this.price,
                  style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: FlatButton(
                      minWidth: 1,
                      child: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: FlatButton(
                minWidth: 1,
                child: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
