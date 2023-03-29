import 'package:cropvana/pages/aidpage.dart';
import 'package:cropvana/pages/homapage.dart';
import 'package:cropvana/pages/profilepage.dart';
import 'package:cropvana/pages/soiltestingpage.dart';
import 'package:cropvana/pages/weatherpage.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedPage = 0;
  final pages = [
    const HomePage(),
    const AidPage(),
    const WeatherPage(),
    const SoiltestingPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          fixedColor: Colors.green[900],
          unselectedItemColor: Colors.grey,
          onTap: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee), label: "Aid"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud_outlined), label: "Weather"),
            BottomNavigationBarItem(
                icon: Icon(Icons.thermostat_sharp), label: "Soil Testing"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
