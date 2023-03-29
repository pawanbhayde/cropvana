import 'package:cropvana/components/CoursesItems.dart';
import 'package:cropvana/components/appdrawer.dart';
import 'package:cropvana/components/homecarousle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cropvana",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithDotsPage(imgList: const [
              'assets/images/1.png',
              'assets/images/2.png',
              'assets/images/3.png',
            ]),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                "Recommanded NGO's",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                CourseItem(
                  image: "assets/images/ngo-1.jpg",
                  title: 'Upay',
                  description: 'Located at nagpur',
                ),
                CourseItem(
                  image: "assets/images/ngo-2.png",
                  title: 'Uddhar Foundation',
                  description: 'Located at Nagpur',
                ),
                CourseItem(
                  image: "assets/images/ngo-3.png",
                  title: 'Vidharbha Ratna',
                  description: 'Located at nagput',
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                "Recommanded NGO's",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                CourseItem(
                  image: "assets/images/hotel-1.png",
                  title: 'Radisson Blu',
                  description: 'Located at nagpur',
                ),
                CourseItem(
                  image: "assets/images/hotel-2.png",
                  title: 'Le Meridien',
                  description: 'Located at Nagpur',
                ),
                CourseItem(
                  image: "assets/images/hotel-3.png",
                  title: 'Pride Hotel',
                  description: 'Located at nagput',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
