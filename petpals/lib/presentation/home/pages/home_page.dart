import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/deep_orange_button.dart';
import 'package:petpals/presentation/home/widgets/doctors.dart';
import 'package:petpals/common/widgets/navbar.dart';
import 'package:petpals/common/widgets/sidebar.dart';
import 'package:petpals/presentation/home/widgets/events.dart';
import 'package:petpals/presentation/home/widgets/favourites.dart';
import 'package:petpals/presentation/home/widgets/tips.dart';
import 'package:petpals/common/widgets/user.dart';
import 'package:petpals/core/config/theme/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: AppColor.brown, size: 30),
            );
          },
        ),
        actions: const [User()],
      ),
      drawer: const Sidebar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColor.lightOrange,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.darkOrange, width: 1.5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Do you like spending time with animals?',
                              style: TextStyle(fontSize: 24),
                            ),
                            DeepOrangeButton(
                              onPressed: () {},
                              title: 'Знайти друзів',
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Image.asset(
                        'assets/images/img1.png',
                        width: 120,
                        height: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text('My favourites', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 12),
                FavouritesList(imagePaths: [
                  'assets/images/fav1.png',
                  'assets/images/fav2.png',
                 
                ]),
                const Text('Tips Section', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 12),
                TipsHorizontalList(
                  tips: [
                    Tips(
                      text: 'How to choose food',
                      imagePath: 'assets/images/tips1.png',
                      onTap: () {},
                    ),
                    Tips(
                      text: 'Teams that are really needed',
                      imagePath: 'assets/images/tips2.png',
                      onTap: () {},
                    ),
                    Tips(
                      text: 'How to clean ears',
                      imagePath: 'assets/images/tips3.png',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Make a doctor's appointment",
                      style: TextStyle(fontSize: 24),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColor.darkOrange,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Doctors(
                  doctorName: 'Koloskova Elena Konstantinovna',
                  imagePath: 'assets/images/doc1.png',
                  petimagePath: 'assets/images/fav1.png',
                  onTap: () {
                    // Navigate to booking page
                  },
                ),
                const SizedBox(height: 30),
                Doctors(
                  doctorName: 'Smirnov Yuri Anatoliyovych',
                  imagePath: 'assets/images/doc2.png',
                  petimagePath: 'assets/images/fav2.png',
                  onTap: () {
                    // Navigate to booking page
                  },
                ),
                const SizedBox(height: 20),
                Text("Events", style: TextStyle(fontSize: 24)),
                const SizedBox(height: 30),
                Events(timeText: '05.04', eventText: "Training will be held for your dogs!", imagePath: 'assets/images/event1.png', onTap: (){}),
                const SizedBox(height: 20),
                                Events(timeText: '08.04', eventText: "Let's go hiking with your pets!", imagePath: 'assets/images/event2.png', onTap: (){}),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
