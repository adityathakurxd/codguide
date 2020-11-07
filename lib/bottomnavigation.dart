import 'package:codguide/aboutus.dart';
import 'package:flutter/cupertino.dart';
import 'homepage.dart';
import 'leftpage.dart';
import 'rightpage.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = "/bottom-navigation";
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    _pages = [
      {
        'page': LeftPage(),
        'title': 'Maps',
      },
      {
        'page': HomePage(),
        'title': 'Home',
      },
      {
        'page': RightPage(),
        'title': 'Tips',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COD-M Guide'
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.info,
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
          },
        ),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text("Maps"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text("Tips"),
          ),
        ],
      ),
    );
  }
}
