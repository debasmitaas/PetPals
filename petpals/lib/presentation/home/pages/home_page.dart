import 'package:flutter/material.dart';
import 'package:petpals/common/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text('Home Page'),
                ),
              ),
          
              Navbar()
          
            ],
            
          ),
        ),
      ),
      // bottomNavigationBar: Navbar(),
    );
  }
}