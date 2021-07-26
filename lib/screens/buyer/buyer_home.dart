import 'package:flutter/material.dart';
import 'package:dynamic_dukaan/screens/buyer/shopping_cart.dart';
import 'package:dynamic_dukaan/widgets/categories_tile.dart';
import 'package:dynamic_dukaan/widgets/nearbyshops_tile.dart';
import 'package:dynamic_dukaan/widgets/toproducts_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'buyer_profile.dart';

class Buyer_Home extends StatefulWidget {
  const Buyer_Home({Key? key}) : super(key: key);

  @override
  _Buyer_HomeState createState() => _Buyer_HomeState();
}

class _Buyer_HomeState extends State<Buyer_Home> {
  int selectedOptionIndex = 0;
  List topProductList = [
    TopProducts_Tile(
      color: Color(0xffDFECF8),
      title: 'kiwi',
      assetPath: 'images/kiwi.png',
      price: 'PKR 120',
    ),
    TopProducts_Tile(
      color: Color(0xffDFECF8),
      title: 'strawberry',
      assetPath: 'images/strawberry.png',
      price: 'PKR 600',
    ),
    TopProducts_Tile(
      color: Color(0xffDFECF8),
      title: 'apple',
      assetPath: 'images/apple.png',
      price: 'PKR 200',
    ),
    TopProducts_Tile(
      color: Color(0xffDFECF8),
      title: 'bread',
      assetPath: 'images/bread.png',
      price: 'PKR 70',
    ),
  ];
  List nearbyShopsList = [
    NearbyShops_Tile(
      color: Color(0xffDFECF8),
      title: 'Hasnain Store',
      assetPath: 'images/shop.png',
    ),
    NearbyShops_Tile(
      color: Color(0xffDFECF8),
      title: 'Feroz Mart',
      assetPath: 'images/shop.png',
    ),
    NearbyShops_Tile(
      color: Color(0xffDFECF8),
      title: 'Imran Store',
      assetPath: 'images/shop.png',
    ),
    NearbyShops_Tile(
      color: Color(0xffDFECF8),
      title: 'Ghazi Mart',
      assetPath: 'images/shop.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.person_outlined),
            color: Colors.white,
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Buyer_Profile(),
                ),
              );
            },
          ),
          actions: _buildActions(),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Image.asset('images/banner.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: GoogleFonts.varelaRound(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xffE0E6EE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Explore All',
                                  style: GoogleFonts.varelaRound(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Categories_Tiles(
                            assetPath: 'images/bread.png',
                            color: Color(0xffFCE8A8),
                            title: 'Bakery',
                          ),
                          Categories_Tiles(
                            assetPath: 'images/apple.png',
                            color: Color(0xffDFECF8),
                            title: 'Fruit',
                          ),
                          Categories_Tiles(
                            assetPath: 'images/vegetable.png',
                            color: Color(0xffE2F3C2),
                            title: 'Vegetables',
                          ),
                          Categories_Tiles(
                            assetPath: 'images/milk.png',
                            color: Color(0xffFFDBC5),
                            title: 'Drinks',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Products',
                              style: GoogleFonts.varelaRound(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xffE0E6EE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Explore All',
                                  style: GoogleFonts.varelaRound(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 200,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    topProductList[index],
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: 20),
                                itemCount: topProductList.length),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nearby Shops',
                              style: GoogleFonts.varelaRound(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xffE0E6EE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Explore All',
                                  style: GoogleFonts.varelaRound(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 200,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    nearbyShopsList[index],
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: 20),
                                itemCount: nearbyShopsList.length),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
        IconButton(
          icon: FaIcon(FontAwesomeIcons.shoppingBasket),
          color: Colors.white,
          tooltip: 'Cart',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Shopping_Cart()),
            );
          },
        )
      ];
}
