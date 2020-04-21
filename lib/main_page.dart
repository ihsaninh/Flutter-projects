import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:covidapp/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;

  List _pages = [
    HomePage(),
    Text("Tab Dua"),
    Text("Tab Tiga"),
    Text("Tab Empat"),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/logo/dashboard.svg',
                width: 18.0,
                height: 18.0,
                color:
                    _selectedTabIndex == 0 ? Colors.amber : Color(0xff434343),
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/logo/maps.svg',
                width: 18.0,
                height: 18.0,
                color:
                    _selectedTabIndex == 1 ? Colors.amber : Color(0xff434343),
              ),
              title: Text("Search")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/logo/hear.svg',
                width: 18.0,
                height: 18.0,
                color:
                    _selectedTabIndex == 2 ? Colors.amber : Color(0xff434343),
              ),
              title: Text("My Account")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/logo/money.svg',
                width: 18.0,
                height: 18.0,
                color:
                    _selectedTabIndex == 3 ? Colors.amber : Color(0xff434343),
              ),
              title: Text("My Account")),
        ],
        onTap: _changeIndex,
        currentIndex: _selectedTabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue);
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 0,
      brightness: Brightness.light,
      leading: Builder(
        builder: (context) => IconButton(
          icon: Image(
            image: AssetImage(
              'assets/logo/virus.png',
            ),
            height: 24,
            width: 24,
          ),
          color: Colors.blueAccent,
          onPressed: () {},
        ),
      ),
      title: Text(
        "COVID-19",
        style: TextStyle(
            color: Color(0xff444444),
            fontFamily: 'Montserrat',
            fontSize: 19.0,
            fontWeight: FontWeight.bold),
      ),
      // centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
