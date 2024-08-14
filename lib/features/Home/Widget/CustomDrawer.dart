import 'package:flutter/material.dart';
import 'package:test_org/core/Theme/AppAssets.dart';
import 'package:test_org/core/Theme/AppColors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: AppColors.whiteColor,
            child:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                Image.asset(
                  Assets.invite3,height: 50,width: 60,
                ),
                  const SizedBox(height: 12),
                  const Text(
                    'Aristooo', 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.of(context).pop();
              
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Massage'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
            ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Calender'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
            ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Bookmark'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
            ListTile(
            leading: const Icon(Icons.contact_emergency),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
            ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.of(context).pop();
              
            },
          ),
        ],
      ),
    );
  }
}
