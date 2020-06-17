import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  List navItems = ['Events', 'Blogs', 'Team', 'About'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFFd4ebf2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset(
              'assets/images/MSP_logo.png',
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 60,
              ),
              _NavBarItem(navItems[0]),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(navItems[1]),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(navItems[2]),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(navItems[3]),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
