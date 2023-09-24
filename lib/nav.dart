import 'package:flutter/material.dart';
import 'package:lorem/pages/home.dart';
import 'package:lorem/pages/medicinepage.dart';
import 'package:lorem/pages/profilepage.dart';


class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int index = 0;

  List<Widget> _index = [MyHomePage(), MedicinePage(), ProfilePage()];

  void updatePage(int _index) {
    setState(() {
      index = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _index[index],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFF2B2B2B),
          unselectedItemColor: Color(0xFF2B2B2B),
          backgroundColor: Color(0xFFEFEFEF),
          selectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 14),
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 26),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: updatePage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF2B2B2B),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_information,
                  color: Color(0xFF2B2B2B),
                ),
                label: 'Medicine'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Color(0xFF2B2B2B),
                ),
                label: 'Profile')
          ],
        ),
      ),
    );
  }
}
