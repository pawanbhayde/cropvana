import 'package:cropvana/components/soiltextingwidget.dart';
import 'package:flutter/material.dart';

class SoiltestingPage extends StatelessWidget {
  const SoiltestingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Soil Testing",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              SoilTextingWidget(
                image:
                    "https://www.thespruce.com/thmb/zGxS2GBnurIsQYA9J_NfFLz1czc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/easy-diy-soil-tests-2539856-09-07da5b60793a481ea54c6041893a5808.jpg",
              ),
              SoilTextingWidget(
                image:
                    'https://www.aces.edu/wp-content/uploads/2018/08/iStock-876143730-2.jpg',
              ),
              SoilTextingWidget(
                image:
                    'https://www.agrivi.com/wp-content/uploads/2017/01/Blog-Soil-Analysis-1200x565.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
