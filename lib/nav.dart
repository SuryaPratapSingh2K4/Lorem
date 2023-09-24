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

  final List<Widget> _index = [const MyHomePage(), const MedicinePage(), const ProfilePage()];

  void updatePage(int index) {
    setState(() {
      index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _index[index],
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
          selectedItemColor: const Color(0xFF2B2B2B),
          unselectedItemColor: const Color(0xFF2B2B2B),
          backgroundColor: const Color(0xFFEFEFEF),
          selectedLabelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 26),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: updatePage,
          items: const [
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
