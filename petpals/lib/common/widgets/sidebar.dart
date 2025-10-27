import 'package:flutter/material.dart';
import 'package:petpals/core/config/theme/app_color.dart';
import 'package:petpals/presentation/intro/pages/get_started.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
              backgroundColor:AppColor.backgroundColor,

        child: ListView(
          children: [
            _listTile('Profile', () {
              // Handle Home tap
            }),
            _listTile('Calender', () {
              // Handle Profile tap
            }),
            _listTile('Vetenary hospitals', () {
              // Handle Settings tap
            }),
            _listTile('Language', () {
              // Handle Settings tap
            }),
            _listTile('About Us', () {
              // Handle Settings tap
            }),
            _listTile('Settings', () {
              // Handle Settings tap
            }),
           ListTile(
              title: Container(
                // padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerLeft,
                child: const Icon(
                  Icons.logout,
                  color: AppColor.darkOrange,
                  size: 30,
                ),
              ),
              onTap: () {
                // Handle Logout tap
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetStarted(),
                      ),
                    );
              },
            ),
            
          ],
        ),
      ),
    );
  }
 Widget _listTile(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: ListTile(
        title: Container(
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: AppColor.lightOrange,
            // borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: const TextStyle(color: AppColor.brown , fontSize: 24),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}