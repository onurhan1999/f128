import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gustopia/view/main_view.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MainView(),
    MainView(),
    MainView(),
    MainView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
              backgroundColor: Color(0xffF37676)),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline_outlined),
              label: '',
              backgroundColor: Color(0xffF37676)),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_outlined),
              label: '',
              backgroundColor: Color(0xffF37676)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
              backgroundColor: Color(0xffF37676)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
