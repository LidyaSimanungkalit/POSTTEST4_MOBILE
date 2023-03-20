import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Home.dart';
import 'Profile.dart';

class MainChart extends StatefulWidget {
  const MainChart({Key? key}) : super(key: key);

  @override
  State<MainChart> createState() => _MainPageState();
}

class _MainPageState extends State<MainChart> {
  int _selectedIndex = 1;
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
      ),
    );
    // return Scaffold(
    //   body: Container(
    //     child: _widgetOptions.elementAt(_selectedIndex),
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: 'Home',
    //         backgroundColor: Color(0xffa85cf9),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.shopping_bag),
    //         label: 'Cart',
    //         backgroundColor: Color(0xffa85cf9),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.favorite),
    //         label: 'Favorite',
    //         backgroundColor: Color(0xffa85cf9),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: 'Profile',
    //         backgroundColor: Color(0xffa85cf9),
    //       ),
    //     ],
    //     currentIndex: _selectedIndex,
    //     selectedItemColor: Colors.white,
    //     onTap: _onItemTapped,
    //   ),
    // );
  }
}
