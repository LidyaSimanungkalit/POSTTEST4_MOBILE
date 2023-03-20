import 'package:flutter/material.dart';
import 'package:posttest4_125_lidya/Cart.dart';
import 'package:posttest4_125_lidya/Favorite.dart';
import 'package:posttest4_125_lidya/Profile.dart';
import 'MainPage.dart';
import 'LandingPage.dart';
import 'MainChart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xffa85cf9),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(left: 95),
      //         child: Image.asset(
      //           'assets/logoAtas.png',
      //           fit: BoxFit.contain,
      //           height: 25,
      //         ),
      //       ),
      //       Icon(Icons.notifications_outlined),
      //     ],
      //   ),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(colors: [
      //               Color(0xffEEA4CE).withOpacity(0.2),
      //               Color(0xffC58BF2).withOpacity(0.2),
      //             ]),
      //           ),
      //           child: Column(
      //             children: [
      //               Container(
      //                   margin: EdgeInsets.only(bottom: 10),
      //                   child: Image.asset(
      //                     "assets/logo.png",
      //                     fit: BoxFit.contain,
      //                     height: 80,
      //                   )),
      //               Image.asset("assets/logop.png"),
      //             ],
      //           )),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Home"),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(
      //             builder: (_) {
      //               return MainPage();
      //             },
      //           ));
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.shopping_bag),
      //         title: Text("Cart"),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(
      //             builder: (_) {
      //               return MainChart();
      //             },
      //           ));
      //         },
      //       ),
      //       // ListTile(
      //       //   leading: Icon(Icons.favorite),
      //       //   title: Text("Favorite"),
      //       //   onTap: () {
      //       //     Navigator.push(context, MaterialPageRoute(
      //       //       builder: (_) {
      //       //         return Favorite();
      //       //       },
      //       //     ));
      //       //   },
      //       // ),
      //       // ListTile(
      //       //   leading: Icon(Icons.person),
      //       //   title: Text("Profile"),
      //       //   onTap: () {
      //       //     Navigator.push(context, MaterialPageRoute(
      //       //       builder: (_) {
      //       //         return Profile();
      //       //       },
      //       //     ));
      //       //   },
      //       // ),
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffa85cf9).withOpacity(0.13),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search...",
                            hintStyle: TextStyle(
                              color: Color(0xffa85cf9),
                            ),
                            prefixIcon: Container(
                              child: Image.asset(
                                "assets/search.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, top: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "CATEGORIES",
                  style: TextStyle(
                    color: Color(0xffa85cf9),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/dress.png')),
                          Text(
                            "DRESS",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/shirt.png')),
                          Text(
                            "SHIRT",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/Tshirt.png')),
                          Text(
                            "T-SHIRT",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/hoodie.png')),
                          Text(
                            "HOODIE",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/jacket.png')),
                          Text(
                            "JACKET",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5, right: 18),
                      width: 85,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/pants.png')),
                          Text(
                            "PANTS",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                child: Image.asset(
                  'assets/banner.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, top: 17),
                child: Text(
                  "WEEKLY\nFASHION",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ]),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, top: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "NEW ARRIVALS",
                  style: TextStyle(
                    color: Color(0xffa85cf9),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5),
                    width: lebar / 2 - 33,
                    height: 205,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff4eafe),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 13, bottom: 7),
                            child: Image.asset('assets/sleeve.png')),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "LongSleeve",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Rp. 28.000",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => Cart()),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffa85cf9),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              'BUY',
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 5),
                    width: lebar / 2 - 33,
                    height: 205,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff4eafe),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 13, bottom: 7),
                            child: Image.asset('assets/shirt2.png')),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Flanel Shirt",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Rp. 50.000",
                            style: TextStyle(
                              color: Color(0xffa85cf9),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => Cart()),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffa85cf9),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              'BUY',
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //lanjutan
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 8),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 5),
                      width: lebar / 2 - 33,
                      height: 205,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/hodi.png')),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Hoodie",
                              style: TextStyle(
                                color: Color(0xffa85cf9),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 25,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Rp. 35.000",
                              style: TextStyle(
                                color: Color(0xffa85cf9),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 90, bottom: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => Cart()),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffa85cf9),
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                'BUY',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 5),
                      width: lebar / 2 - 33,
                      height: 205,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff4eafe),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 13, bottom: 7),
                              child: Image.asset('assets/jaket.png')),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Jaket",
                              style: TextStyle(
                                color: Color(0xffa85cf9),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 25,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Rp. 80.000",
                              style: TextStyle(
                                color: Color(0xffa85cf9),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 90, bottom: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => Cart()),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffa85cf9),
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                'BUY',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
