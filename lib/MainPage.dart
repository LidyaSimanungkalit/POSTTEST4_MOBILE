import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Home.dart';
import 'Profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  bool isDark = false;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Cart(),
    Favorite(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: isDark ? Brightness.dark : Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffa85cf9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 67),
                child: Image.asset(
                  'assets/logoAtas.png',
                  fit: BoxFit.contain,
                  height: 25,
                ),
              ),
              Switch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                    });
                    print(isDark);
                  }),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffEEA4CE).withOpacity(0.2),
                      Color(0xffC58BF2).withOpacity(0.2),
                    ]),
                  ),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "assets/logo.png",
                            fit: BoxFit.contain,
                            height: 80,
                          )),
                      Image.asset("assets/logop.png"),
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) {
                      return MainPage();
                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Cart"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) {
                      return Home();
                    },
                  ));
                },
              ),
              // ListTile(
              //   leading: Icon(Icons.favorite),
              //   title: Text("Favorite"),
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (_) {
              //         return Favorite();
              //       },
              //     ));
              //   },
              // ),
              // ListTile(
              //   leading: Icon(Icons.person),
              //   title: Text("Profile"),
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (_) {
              //         return Profile();
              //       },
              //     ));
              //   },
              // ),
            ],
          ),
        ),
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xffa85cf9),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Cart',
              backgroundColor: Color(0xffa85cf9),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Color(0xffa85cf9),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color(0xffa85cf9),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
    //  return Scaffold(
    // body: Container(
    //   child: _widgetOptions.elementAt(_selectedIndex),
    // ),
    // bottomNavigationBar: BottomNavigationBar(
    //   items: const <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       label: 'Home',
    //       backgroundColor: Color(0xffa85cf9),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.shopping_bag),
    //       label: 'Cart',
    //       backgroundColor: Color(0xffa85cf9),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.favorite),
    //       label: 'Favorite',
    //       backgroundColor: Color(0xffa85cf9),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.person),
    //       label: 'Profile',
    //       backgroundColor: Color(0xffa85cf9),
    //     ),
    //   ],
    //   currentIndex: _selectedIndex,
    //   selectedItemColor: Colors.white,
    //   onTap: _onItemTapped,
    // ),
    // );
  }
}
