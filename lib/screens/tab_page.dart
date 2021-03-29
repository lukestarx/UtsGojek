import 'package:flutter/material.dart';
import 'package:gojek1/screens/home_page.dart';

class TabPage extends StatefulWidget {

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  // ignore: unused_field
  int _selectedIndex = 0;
  // ignore: unused_field
  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Promo'),),
  HomePage(),
    Center(child: Text('chat'),),
  ];

  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
          children: [
            Container(  
             decoration: BoxDecoration (color: Color(0xff1cad43),
             boxShadow:[BoxShadow(blurRadius: 20,color: Colors.black.withOpacity(1))
             ]),
              child: SafeArea(
                child:  GNav(

  duration: Duration(milliseconds: 900), 
  gap: 8, 
  color: Colors.white, 
  activeColor: Colors.white,
  iconSize: 24, 
  tabBackgroundColor: Colors.white24,
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), 
  tabs: [
    GButton(
      icon: Icons.calendar_today_outlined,
      text: 'Promo',
    ),
    GButton(
      icon: Icons.home,
      text: 'home',
    ),
    GButton(
      icon: Icons.message,
      text: 'Message',
    ),
   
  ],
),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height /1.15,
              child: _widgetOptions.elementAt(_selectedIndex),
            )
          ],
        ),
      ),
    );
  }
}