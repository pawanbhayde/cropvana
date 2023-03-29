// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProfilePageListItems extends StatelessWidget {
  const ProfilePageListItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ProfilePageLinks(
            icon: Icons.person,
            title: 'My Profile',
          ),
          ProfilePageLinks(
            icon: Icons.watch,
            title: 'Testing History',
          ),
          ProfilePageLinks(
            icon: Icons.settings,
            title: 'Settings',
          ),
          ProfilePageLinks(
            icon: Icons.notifications,
            title: 'Notification',
          ),
          ProfilePageLinks(
            icon: Icons.message,
            title: 'FAQs',
          ),
          ProfilePageLinks(
            icon: Icons.share,
            title: 'Share',
          ),
          ProfilePageLinks(
            icon: Icons.logout,
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}

class ProfilePageLinks extends StatelessWidget {
  const ProfilePageLinks({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}
