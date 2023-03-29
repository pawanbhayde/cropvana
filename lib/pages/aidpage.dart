import 'package:cropvana/components/CoursesItems.dart';
import 'package:flutter/material.dart';

class AidPage extends StatelessWidget {
  const AidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade700,
                        ),
                        border: InputBorder.none,
                        hintText: "Search College Wise Notes",
                        hintStyle: TextStyle(color: Colors.grey.shade500)),
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
      ),
    );
  }
}
