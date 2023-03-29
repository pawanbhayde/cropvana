import 'package:cropvana/components/ProfilePageWidgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [
                Text(
                  "Ashish Rawat",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "+919575856525",
                  style: TextStyle(
                      color: Color(0xff7A7E84),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfilePageListItems()
          ],
        ),
      ),
    );
  }
}
