import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wextville/Pages/HomeComponent.dart';
import 'package:wextville/Pages/UserComponent.dart';
import 'package:wextville/Pages/noteComponent.dart';
import 'package:wextville/Pages/searchComponent.dart';
import 'package:wextville/Pages/settingComponent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold();
  // }

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeComponent(),
    searchComponent(),
    settingComponent(),
    noteComponent(),
    userComponent()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              tabBorderRadius: 7,
              rippleColor: Color(0xff00EEEE),
              hoverColor: Color(0xff00EEEE),
              //gap: 0,
              activeColor: Color(0xff007D76),
              iconSize: 28,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              duration: Duration(milliseconds: 500),
              tabBackgroundColor: Color(0xffD0FFFF),
              color: Colors.black,
              tabs: [
                GButton(icon: Icons.trip_origin_rounded,
                    // ImageIcon( AssetImage("assets/icons/Appicon.png"),
                    ),
                GButton(
                  icon: Icons.search,
                ),
                GButton(
                  icon: Icons.settings_outlined,
                ),
                GButton(
                  icon: Icons.description_outlined,
                ),
                GButton(
                  icon: Icons.person_outline,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
