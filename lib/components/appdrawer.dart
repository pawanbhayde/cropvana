import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //ListView to listdown children of drawer
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green[900]),
            accountName: const Text("Ashish Rawat"),
            accountEmail: const Text("ashishrawat2911@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: const Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("title"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.eco),
            title: const Text("My Crops"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_rounded),
            title: const Text("My Orders"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.thermostat_sharp),
            title: const Text("My Soil Test"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Share App"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Sign Out"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
